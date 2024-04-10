; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/07_const_var_defn3.sy"

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

define i32  @main() {
label_entry:
  %op0 = alloca float
  %op1 = sitofp i32  5 to float
  store float %op1, float* %op0
  %op2 = alloca float
  %op3 = sitofp i32  5 to float
  store float %op3, float* %op2
  %op4 = load float, float* %op0
  %op5 = fptosi float %op4 to i32 
  ret i32  %op5
}
