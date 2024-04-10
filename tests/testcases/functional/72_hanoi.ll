; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/72_hanoi.sy"

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

define void @move(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = load i32 , i32 * %op2
  call void @putint(i32  %op4)
  %op5 = trunc i32  32 to i8 
  call void @putch(i8  %op5)
  %op6 = load i32 , i32 * %op3
  call void @putint(i32  %op6)
  %op7 = trunc i32  44 to i8 
  call void @putch(i8  %op7)
  %op8 = trunc i32  32 to i8 
  call void @putch(i8  %op8)
  ret void
}
define void @hanoi(i32  %arg0, i32  %arg1, i32  %arg2, i32  %arg3) {
label_entry:
  %op4 = alloca i32 
  store i32  %arg0, i32 * %op4
  %op5 = alloca i32 
  store i32  %arg1, i32 * %op5
  %op6 = alloca i32 
  store i32  %arg2, i32 * %op6
  %op7 = alloca i32 
  store i32  %arg3, i32 * %op7
  %op8 = load i32 , i32 * %op4
  %op9 = icmp eq i32  %op8, 1
  %op10 = zext i1  %op9 to i32 
  %op11 = icmp ne i32  %op10, 0
  br i1  %op11, label %label12, label %label15
label12:                                                ; preds = %label_entry
  %op13 = load i32 , i32 * %op5
  %op14 = load i32 , i32 * %op7
  call void @move(i32  %op13, i32  %op14)
  br label %label28
label15:                                                ; preds = %label_entry
  %op16 = load i32 , i32 * %op4
  %op17 = sub i32  %op16, 1
  %op18 = load i32 , i32 * %op5
  %op19 = load i32 , i32 * %op7
  %op20 = load i32 , i32 * %op6
  call void @hanoi(i32  %op17, i32  %op18, i32  %op19, i32  %op20)
  %op21 = load i32 , i32 * %op5
  %op22 = load i32 , i32 * %op7
  call void @move(i32  %op21, i32  %op22)
  %op23 = load i32 , i32 * %op4
  %op24 = sub i32  %op23, 1
  %op25 = load i32 , i32 * %op6
  %op26 = load i32 , i32 * %op5
  %op27 = load i32 , i32 * %op7
  call void @hanoi(i32  %op24, i32  %op25, i32  %op26, i32  %op27)
  br label %label28
label28:                                                ; preds = %label12, %label15
  ret void
}
define i32  @main() {
label_entry:
  %op0 = alloca i32 
  %op1 = call i32  @getint()
  store i32  %op1, i32 * %op0
  br label %label2
label2:                                                ; preds = %label_entry, %label7
  %op3 = load i32 , i32 * %op0
  %op4 = icmp sgt i32  %op3, 0
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label12
label7:                                                ; preds = %label2
  %op8 = call i32  @getint()
  call void @hanoi(i32  %op8, i32  1, i32  2, i32  3)
  %op9 = trunc i32  10 to i8 
  call void @putch(i8  %op9)
  %op10 = load i32 , i32 * %op0
  %op11 = sub i32  %op10, 1
  store i32  %op11, i32 * %op0
  br label %label2
label12:                                                ; preds = %label2
  ret i32  0
}
