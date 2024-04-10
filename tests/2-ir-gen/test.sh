#!/bin/bash

# 获取脚本所在目录的绝对路径
script_dir=$(dirname "$(readlink -f "$0")")
project_dir=$(realpath ../../)
source_dir=$(realpath "$project_dir"/tests/testcases/functional)
# 设置源代码文件和目标文件的路径

output_dir="$script_dir/output"
diff_dir="$script_dir/diff"

rm -r $diff_dir
# 创建输出目录
mkdir -p "$output_dir"
mkdir -p "$diff_dir"

rm -f "$source_dir"/*.ll
# 文件用于记录失败的文件名
failed_files="$output_dir/failed_files.txt"
# 如果该文件存在则删除
[ -f "$failed_files" ] && rm "$failed_files"

cd $source_dir

# 遍历perform目录下的所有xx.sy文件
for source_file in *.sy; do
    # 提取文件名（不包含扩展名）
    filename=$(basename -- "$source_file")
    filename="${filename%.*}"

    # 生成IR文件
     
    cminusfc "$source_file" -emit-llvm

    # 生成可执行文件
    clang -O0 -w -no-pie "$filename.ll" -o "$filename" -lcminus_io

#     
#     if [ -f "$source_dir/$filename.in" ]; then
#         ./"$source_dir/$filename" < "$source_dir/$filename.in" > "$output_dir/$filename.txt"
#     else
#         ./"$source_dir/$filename" > "$output_dir/$filename.txt"
#     fi
# done
# 获取输入文件路径
    input_file="$source_dir/$filename.in"
    input_option=""

    # 检查是否存在输入文件
    if [ -f "$input_file" ]; then
        # 读取输入文件内容
        input_data=$(<"$input_file")
        # 传递输入文件内容给可执行文件
        input_option="<<< \"$input_data\""
    fi

    # 执行命令，并将输出重定向至.txt文件
    bash -c "./$filename $input_option > $output_dir/$filename.txt"
    exit_code=$? 
    echo  "$exit_code" >> "$output_dir/$filename.txt"
    #diff -u $output_dir/$filename.txt $source_dir/$filename.out > $diff_dir/$filename.diff.txt
    #if cmp -s "$output_dir/$filename.txt" "$source_dir/$filename.out"; then
    tr '\n' ' ' < $output_dir/$filename.txt > $output_dir/$filename_no_newline.txt
    tr '\n' ' ' < $source_dir/$filename.out > $source_dir/$filename_no_newline.out
   # diff -u -w $output_dir/$.txt $source_dir/$.out > $diff_dir/$filename.diff.txt
    if diff -u -w "$output_dir/$filename_no_newline.txt" "$source_dir/$filename_no_newline.out"; then
    echo "Files $filename identical"
else
    # 生成差异文件
    diff -u -w "$output_dir/$filename.txt" "$source_dir/$filename.out" > "$diff_dir/$filename.diff.txt"
    echo "$filename" >> "$failed_files"
fi
    # 检查执行结果并写入输出文件
    if [ "$exit_code" -eq 127 ]; then
        echo -e "generation failure" >> "$output_dir/$filename.txt"
        #echo "$filename" >> "$failed_files"
    else
        echo -e "generation success" >> "$output_dir/$filename.txt"
        # 将失败的文件名记录到文件中
        # echo $? >> "$output_dir/$filename.txt"
    fi
done
    