; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/67_reverse_output.sy"

declare i32  @getint()

declare i8  @getch()

declare i32  @getarray(i32 *)

declare float @getfloat()

declare float @getfarray(float*)

declare void @putint(i32 )

declare void @putfloat(float)

declare void @putch(i8 )

declare void @putf(i8 )

declare void @putarray(i32 )

declare void @putfarray(float)

define void @reverse(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = alloca i32 
  %op3 = load i32 , i32 * %op1
  %op4 = icmp sle i32  %op3, 1
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label10
label7:                                                ; preds = %label_entry
  %op8 = call i32  @getint()
  store i32  %op8, i32 * %op2
  %op9 = load i32 , i32 * %op2
  call void @putint(i32  %op9)
  br label %label15
label10:                                                ; preds = %label_entry
  %op11 = call i32  @getint()
  store i32  %op11, i32 * %op2
  %op12 = load i32 , i32 * %op1
  %op13 = sub i32  %op12, 1
  call void @reverse(i32  %op13)
  %op14 = load i32 , i32 * %op2
  call void @putint(i32  %op14)
  br label %label15
label15:                                                ; preds = %label7, %label10
  ret void
}
define i32  @main() {
label_entry:
  %op0 = alloca i32 
  store i32  200, i32 * %op0
  %op1 = load i32 , i32 * %op0
  call void @reverse(i32  %op1)
  ret i32  0
}
