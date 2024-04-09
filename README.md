# 简介

本仓库为USTC建木杯比赛SysY语言编译器的实现仓库


用法：
1. ir_gen : cd 2-ir-gen/
   chmod +x test.sh
    ./test.sh即可. 若测hidden_functional目录，只需要查找替换test.sh中的functional为hidden_functional即可
2. code_gen : cd 3-codegen/ 
   chmod +x eval_lab3.sh
   测functional目录：./eval_lab3.sh ../testcases/functional test
   测hidden_functional目录：./eval_lab3.sh ../testcases/hidden_functional test
3. mem2reg同2.