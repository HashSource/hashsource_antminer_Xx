source_filename = "test"
target datalayout = "e-p:32:32:32-f80:32:32"

@global_var_8770 = local_unnamed_addr constant i32 35556
@global_var_8ae4 = local_unnamed_addr constant [32 x i8] c"monitor-recobtn compile %s--%s\0A\00"
@global_var_8774 = local_unnamed_addr constant i32 35588
@global_var_8b04 = local_unnamed_addr constant [12 x i8] c"Oct  9 2018\00"
@global_var_8778 = local_unnamed_addr constant i32 35600
@global_var_8b10 = constant [9 x i8] c"18:32:45\00"
@global_var_877c = local_unnamed_addr constant i32 35612
@global_var_8b1c = local_unnamed_addr constant [32 x i8] c"Detect recovery button push off\00"
@global_var_8780 = local_unnamed_addr constant i32 35644
@global_var_8b3c = local_unnamed_addr constant [42 x i8] c"recovery button off over 3S, wait push on\00"
@global_var_8784 = local_unnamed_addr constant i32 35688
@global_var_8b68 = local_unnamed_addr constant [44 x i8] c"echo high >/sys/class/gpio/gpio20/direction\00"
@global_var_8788 = local_unnamed_addr constant i32 35732
@global_var_8b94 = local_unnamed_addr constant [43 x i8] c"echo low >/sys/class/gpio/gpio20/direction\00"
@global_var_878c = local_unnamed_addr constant i32 35776
@global_var_8bc0 = local_unnamed_addr constant [19 x i8] c"recovery button on\00"
@global_var_8790 = local_unnamed_addr constant i32 35812
@global_var_8be4 = local_unnamed_addr constant [15 x i8] c"child complete\00"
@global_var_8794 = local_unnamed_addr constant i32 35828
@global_var_8bf4 = local_unnamed_addr constant [26 x i8] c"recovery factory complete\00"
@global_var_8798 = local_unnamed_addr constant i32 35796
@global_var_8bd4 = local_unnamed_addr constant [15 x i8] c"error occured.\00"
@global_var_87cc = local_unnamed_addr constant i32 35288
@global_var_89d8 = local_unnamed_addr constant i32 -516948194
@global_var_87d0 = local_unnamed_addr constant i32 34244
@global_var_87d4 = local_unnamed_addr constant i32 35188
@global_var_8974 = local_unnamed_addr constant i32 -382908936
@global_var_87f4 = local_unnamed_addr constant i32 34088
@global_var_87f8 = local_unnamed_addr constant i32 76
@global_var_10c28 = global i32 1
@global_var_10d10 = local_unnamed_addr global i32* @global_var_10c28
@global_var_10d5c = local_unnamed_addr global i32 0
@global_var_8828 = local_unnamed_addr constant i32 68968
@global_var_882c = local_unnamed_addr constant i32 68971
@global_var_8830 = local_unnamed_addr constant i32 0
@global_var_8868 = local_unnamed_addr constant i32 68968
@global_var_886c = local_unnamed_addr constant i32 68968
@global_var_8870 = local_unnamed_addr constant i32 0
@global_var_8898 = local_unnamed_addr constant i32 68968
@global_var_88c8 = local_unnamed_addr constant i32 68644
@global_var_10c24 = global i32 0
@global_var_88cc = local_unnamed_addr constant i32 0
@global_var_89e8 = local_unnamed_addr constant [43 x i8] c"echo low >/sys/class/gpio/gpio23/direction\00"
@global_var_8a14 = local_unnamed_addr constant [43 x i8] c"echo low >/sys/class/gpio/gpio45/direction\00"
@global_var_8a40 = local_unnamed_addr constant [44 x i8] c"echo high >/sys/class/gpio/gpio23/direction\00"
@global_var_8a6c = local_unnamed_addr constant [44 x i8] c"echo high >/sys/class/gpio/gpio45/direction\00"
@global_var_8964 = local_unnamed_addr constant i32 35480
@global_var_8a98 = local_unnamed_addr constant [29 x i8] c"/sys/class/gpio/gpio46/value\00"
@global_var_8968 = local_unnamed_addr constant i32 35512
@global_var_8ab8 = local_unnamed_addr constant i32 114
@global_var_896c = local_unnamed_addr constant i32 35552
@global_var_8ae0 = local_unnamed_addr constant [3 x i8] c"%d\00"
@global_var_8970 = local_unnamed_addr constant i32 35516
@global_var_8abc = local_unnamed_addr constant [34 x i8] c"Open read recovery button failure\00"
@global_var_89d0 = local_unnamed_addr constant i32 33420
@global_var_828c = global i32 34196
@global_var_89d4 = local_unnamed_addr constant i32 33408
@global_var_8280 = global i32 0
@global_var_899c = constant i32 -508534458
@global_var_10d68 = external global i8*

define i32 @function_84e4(i32 %arg1, i32 %arg2, i32 %arg3, i32 %arg4) local_unnamed_addr {
dec_label_pc_84e4:
  %0 = call i32 @function_87d8(), !insn.addr !0
  ret i32 %0, !insn.addr !1
}

define i32 @printf.12() local_unnamed_addr {
dec_label_pc_8504:
  %0 = alloca i32
  %1 = load i32, i32* %0
  ret i32 %1, !insn.addr !2
}

define i32 @fscanf.13() local_unnamed_addr {
dec_label_pc_8510:
  %0 = alloca i32
  %1 = load i32, i32* %0
  ret i32 %1, !insn.addr !3
}

define i32 @fopen.6() local_unnamed_addr {
dec_label_pc_851c:
  %0 = alloca i32
  %1 = load i32, i32* %0
  ret i32 %1, !insn.addr !4
}

define i32 @execvp.7() local_unnamed_addr {
dec_label_pc_8528:
  %0 = alloca i32
  %1 = load i32, i32* %0
  ret i32 %1, !insn.addr !5
}

define i32 @sleep.11() local_unnamed_addr {
dec_label_pc_8534:
  %0 = alloca i32
  %1 = load i32, i32* %0
  ret i32 %1, !insn.addr !6
}

define i32 @wait.5() local_unnamed_addr {
dec_label_pc_8540:
  %0 = alloca i32
  %1 = load i32, i32* %0
  ret i32 %1, !insn.addr !7
}

define i32 @usleep.2() local_unnamed_addr {
dec_label_pc_854c:
  %0 = alloca i32
  %1 = load i32, i32* %0
  ret i32 %1, !insn.addr !8
}

define i32 @gettimeofday.8() local_unnamed_addr {
dec_label_pc_8558:
  %0 = alloca i32
  %1 = load i32, i32* %0
  ret i32 %1, !insn.addr !9
}

define i32 @puts.10() local_unnamed_addr {
dec_label_pc_8564:
  %0 = alloca i32
  %1 = load i32, i32* %0
  ret i32 %1, !insn.addr !10
}

define i32 @__libc_start_main.14() local_unnamed_addr {
dec_label_pc_8570:
  %0 = alloca i32
  %1 = load i32, i32* %0
  ret i32 %1, !insn.addr !11
}

define i32 @system.15() local_unnamed_addr {
dec_label_pc_857c:
  %0 = alloca i32
  %1 = load i32, i32* %0
  ret i32 %1, !insn.addr !12
}

define i32 @function_8588() local_unnamed_addr {
dec_label_pc_8588:
  %0 = alloca i32
  %1 = load i32, i32* %0
  ret i32 %1, !insn.addr !13
}

define i32 @exit.3() local_unnamed_addr {
dec_label_pc_8594:
  %0 = alloca i32
  %1 = load i32, i32* %0
  ret i32 %1, !insn.addr !14
}

define i32 @fclose.4() local_unnamed_addr {
dec_label_pc_85a0:
  %0 = alloca i32
  %1 = load i32, i32* %0
  ret i32 %1, !insn.addr !15
}

define i32 @fork.9() local_unnamed_addr {
dec_label_pc_85ac:
  %0 = alloca i32
  %1 = load i32, i32* %0
  ret i32 %1, !insn.addr !16
}

define i32 @abort.16() local_unnamed_addr {
dec_label_pc_85b8:
  %0 = alloca i32
  %1 = load i32, i32* %0
  ret i32 %1, !insn.addr !17
}

define i32 @function_85c4(i32 %arg1, i32 %arg2) local_unnamed_addr {
dec_label_pc_85c4:
  %0 = alloca i32
  %r3.4.reg2mem = alloca i32, !insn.addr !18
  %r2.4.reg2mem = alloca i32, !insn.addr !18
  %r3.3.reg2mem = alloca i32, !insn.addr !18
  %r2.3.reg2mem = alloca i32, !insn.addr !18
  %r1.2.reg2mem = alloca i32, !insn.addr !18
  %r4.0.reg2mem = alloca i32, !insn.addr !18
  %r0.0.reg2mem = alloca i32, !insn.addr !18
  %.reg2mem = alloca i32, !insn.addr !18
  %r3.1.reg2mem = alloca i32, !insn.addr !18
  %r2.1.reg2mem = alloca i32, !insn.addr !18
  %r3.0.reg2mem = alloca i32, !insn.addr !18
  %r2.0.reg2mem = alloca i32, !insn.addr !18
  %1 = load i32, i32* %0
  %2 = load i32, i32* %0
  %3 = load i32, i32* %0
  %4 = load i32, i32* %0
  %5 = call i32 @printf.12(), !insn.addr !19
  %6 = sub i32 %3, %4
  %7 = mul i32 %6, 1000000
  %8 = sub i32 %2, %1
  %9 = add i32 %7, %8
  %10 = icmp slt i32 %9, 3000001
  store i32 ptrtoint ([9 x i8]* @global_var_8b10 to i32), i32* %r2.0.reg2mem, !insn.addr !19
  br label %dec_label_pc_85e4, !insn.addr !19

dec_label_pc_85e4:                                ; preds = %dec_label_pc_871c, %dec_label_pc_85c4
  %r3.0.reload = load i32, i32* %r3.0.reg2mem
  %r2.0.reload = load i32, i32* %r2.0.reg2mem
  %11 = call i32 @function_8910(), !insn.addr !20
  %12 = icmp eq i32 %11, 0, !insn.addr !21
  store i32 %r2.0.reload, i32* %r2.1.reg2mem, !insn.addr !22
  store i32 %r3.0.reload, i32* %r3.1.reg2mem, !insn.addr !22
  store i32 %r2.0.reload, i32* %r2.4.reg2mem, !insn.addr !22
  store i32 %r3.0.reload, i32* %r3.4.reg2mem, !insn.addr !22
  br i1 %12, label %dec_label_pc_85f4, label %dec_label_pc_871c, !insn.addr !22

dec_label_pc_85f4:                                ; preds = %dec_label_pc_85e4, %dec_label_pc_8708
  %r3.1.reload = load i32, i32* %r3.1.reg2mem
  %r2.1.reload = load i32, i32* %r2.1.reg2mem
  %13 = call i32 @gettimeofday.8(), !insn.addr !23
  %14 = call i32 @function_88d0(i32 %13, i32 0, i32 %r2.1.reload, i32 %r3.1.reload), !insn.addr !24
  %15 = call i32 @puts.10(), !insn.addr !25
  %16 = call i32 @function_8910(), !insn.addr !26
  %17 = icmp eq i32 %16, 1, !insn.addr !27
  store i32 0, i32* %r1.2.reg2mem, !insn.addr !28
  store i32 %r2.1.reload, i32* %r2.3.reg2mem, !insn.addr !28
  store i32 %r3.1.reload, i32* %r3.3.reg2mem, !insn.addr !28
  br i1 %17, label %dec_label_pc_8708, label %dec_label_pc_8618.preheader, !insn.addr !28

dec_label_pc_8618.preheader:                      ; preds = %dec_label_pc_85f4, %dec_label_pc_8608.backedge
  br label %dec_label_pc_8618

dec_label_pc_8618:                                ; preds = %dec_label_pc_8618.preheader, %dec_label_pc_86f0
  %18 = call i32 @gettimeofday.8(), !insn.addr !29
  br i1 %10, label %dec_label_pc_8728, label %dec_label_pc_8658, !insn.addr !30

dec_label_pc_8658:                                ; preds = %dec_label_pc_8618
  %19 = call i32 @puts.10(), !insn.addr !31
  %20 = call i32 @function_8910(), !insn.addr !32
  %21 = icmp eq i32 %20, 0, !insn.addr !33
  %22 = call i32 @system.15()
  store i32 %22, i32* %.reg2mem, !insn.addr !34
  br i1 %21, label %dec_label_pc_8664, label %dec_label_pc_8694, !insn.addr !34

dec_label_pc_8664:                                ; preds = %dec_label_pc_8658, %dec_label_pc_8664
  %.reload = load i32, i32* %.reg2mem
  %23 = call i32 @function_88d0(i32 %.reload, i32 %2, i32 %9, i32 3000000), !insn.addr !35
  %24 = call i32 @sleep.11(), !insn.addr !36
  %25 = call i32 @function_88f0(i32 %24, i32 %2, i32 %9, i32 3000000), !insn.addr !37
  %26 = call i32 @sleep.11(), !insn.addr !38
  %27 = call i32 @function_8910(), !insn.addr !32
  %28 = icmp eq i32 %27, 0, !insn.addr !33
  %29 = call i32 @system.15()
  store i32 %29, i32* %.reg2mem, !insn.addr !34
  br i1 %28, label %dec_label_pc_8664, label %dec_label_pc_8694, !insn.addr !34

dec_label_pc_8694:                                ; preds = %dec_label_pc_8664, %dec_label_pc_8658
  %30 = call i32 @puts.10(), !insn.addr !39
  %31 = call i32 @fork.9(), !insn.addr !40
  %32 = icmp slt i32 %31, 0, !insn.addr !41
  br i1 %32, label %dec_label_pc_8738, label %dec_label_pc_86b0, !insn.addr !42

dec_label_pc_86b0:                                ; preds = %dec_label_pc_8694
  %33 = icmp eq i32 %31, 0, !insn.addr !41
  br i1 %33, label %dec_label_pc_8744, label %dec_label_pc_86b4, !insn.addr !43

dec_label_pc_86b4:                                ; preds = %dec_label_pc_86b0
  %34 = call i32 @wait.5(), !insn.addr !44
  %35 = call i32 @puts.10(), !insn.addr !45
  store i32 %35, i32* %r0.0.reg2mem, !insn.addr !45
  store i32 100, i32* %r4.0.reg2mem, !insn.addr !45
  br label %dec_label_pc_86c8, !insn.addr !45

dec_label_pc_86c8:                                ; preds = %dec_label_pc_86c8, %dec_label_pc_86b4
  %r4.0.reload = load i32, i32* %r4.0.reg2mem
  %r0.0.reload = load i32, i32* %r0.0.reg2mem
  %36 = call i32 @function_88d0(i32 %r0.0.reload, i32 %2, i32 %9, i32 3000000), !insn.addr !46
  %37 = call i32 @usleep.2(), !insn.addr !47
  %38 = call i32 @function_88f0(i32 %37, i32 %2, i32 %9, i32 3000000), !insn.addr !48
  %39 = call i32 @usleep.2(), !insn.addr !49
  %40 = add nsw i32 %r4.0.reload, -1, !insn.addr !50
  %41 = icmp eq i32 %r4.0.reload, 1, !insn.addr !50
  store i32 %39, i32* %r0.0.reg2mem, !insn.addr !51
  store i32 %40, i32* %r4.0.reg2mem, !insn.addr !51
  br i1 %41, label %dec_label_pc_86f0, label %dec_label_pc_86c8, !insn.addr !51

dec_label_pc_86f0:                                ; preds = %dec_label_pc_86c8
  %42 = call i32 @puts.10(), !insn.addr !52
  %43 = call i32 @function_8910(), !insn.addr !53
  %44 = icmp eq i32 %43, 1, !insn.addr !54
  store i32 %9, i32* %r2.3.reg2mem, !insn.addr !55
  store i32 3000000, i32* %r3.3.reg2mem, !insn.addr !55
  br i1 %44, label %dec_label_pc_8708, label %dec_label_pc_8618, !insn.addr !55

dec_label_pc_8708:                                ; preds = %dec_label_pc_8608.backedge, %dec_label_pc_86f0, %dec_label_pc_85f4
  %r3.3.reload = load i32, i32* %r3.3.reg2mem
  %r2.3.reload = load i32, i32* %r2.3.reg2mem
  %r1.2.reload = load i32, i32* %r1.2.reg2mem
  %45 = call i32 @function_88f0(i32 1, i32 %r1.2.reload, i32 %r2.3.reload, i32 %r3.3.reload), !insn.addr !56
  %46 = call i32 @function_8910(), !insn.addr !57
  %47 = icmp eq i32 %46, 0, !insn.addr !58
  store i32 %r2.3.reload, i32* %r2.1.reg2mem, !insn.addr !59
  store i32 %r3.3.reload, i32* %r3.1.reg2mem, !insn.addr !59
  store i32 %r2.3.reload, i32* %r2.4.reg2mem, !insn.addr !59
  store i32 %r3.3.reload, i32* %r3.4.reg2mem, !insn.addr !59
  br i1 %47, label %dec_label_pc_85f4, label %dec_label_pc_871c, !insn.addr !59

dec_label_pc_871c:                                ; preds = %dec_label_pc_8708, %dec_label_pc_85e4
  %r3.4.reload = load i32, i32* %r3.4.reg2mem
  %r2.4.reload = load i32, i32* %r2.4.reg2mem
  %48 = call i32 @sleep.11(), !insn.addr !60
  store i32 %r2.4.reload, i32* %r2.0.reg2mem, !insn.addr !61
  store i32 %r3.4.reload, i32* %r3.0.reg2mem, !insn.addr !61
  br label %dec_label_pc_85e4, !insn.addr !61

dec_label_pc_8728:                                ; preds = %dec_label_pc_8618
  %49 = call i32 @usleep.2(), !insn.addr !62
  br label %dec_label_pc_8608.backedge, !insn.addr !63

dec_label_pc_8608.backedge:                       ; preds = %dec_label_pc_8728, %dec_label_pc_8738
  %50 = call i32 @function_8910(), !insn.addr !26
  %51 = icmp eq i32 %50, 1, !insn.addr !27
  store i32 %9, i32* %r2.3.reg2mem, !insn.addr !28
  store i32 3000000, i32* %r3.3.reg2mem, !insn.addr !28
  br i1 %51, label %dec_label_pc_8708, label %dec_label_pc_8618.preheader, !insn.addr !28

dec_label_pc_8738:                                ; preds = %dec_label_pc_8694
  %52 = call i32 @puts.10(), !insn.addr !64
  br label %dec_label_pc_8608.backedge, !insn.addr !65

dec_label_pc_8744:                                ; preds = %dec_label_pc_86b0
  %53 = call i32 @function_88f0(i32 0, i32 %2, i32 %9, i32 3000000), !insn.addr !66
  %54 = icmp slt i32 %arg1, 2, !insn.addr !67
  br i1 %54, label %dec_label_pc_8764, label %dec_label_pc_8750, !insn.addr !67

dec_label_pc_8750:                                ; preds = %dec_label_pc_8744
  %55 = call i32 @execvp.7(), !insn.addr !68
  br label %dec_label_pc_875c, !insn.addr !68

dec_label_pc_875c:                                ; preds = %dec_label_pc_8764, %dec_label_pc_8750
  %56 = call i32 @exit.3(), !insn.addr !69
  br label %dec_label_pc_8764, !insn.addr !69

dec_label_pc_8764:                                ; preds = %dec_label_pc_875c, %dec_label_pc_8744
  %57 = call i32 @sleep.11(), !insn.addr !70
  br label %dec_label_pc_875c, !insn.addr !71

; uselistorder directives
  uselistorder i32 %r2.3.reload, { 0, 2, 1 }
  uselistorder i32 %r3.3.reload, { 0, 2, 1 }
  uselistorder i32 %r4.0.reload, { 1, 0 }
  uselistorder i32 %9, { 2, 0, 1, 6, 7, 4, 5, 3 }
  uselistorder i32 %2, { 2, 3, 4, 0, 1, 5 }
  uselistorder i32* %r2.0.reg2mem, { 1, 0, 2 }
  uselistorder i32* %r3.0.reg2mem, { 1, 0 }
  uselistorder i32* %r2.1.reg2mem, { 2, 0, 1 }
  uselistorder i32* %r3.1.reg2mem, { 2, 0, 1 }
  uselistorder i32* %.reg2mem, { 2, 0, 1 }
  uselistorder i32* %r0.0.reg2mem, { 1, 0, 2 }
  uselistorder i32* %r4.0.reg2mem, { 1, 0, 2 }
  uselistorder i32* %r2.3.reg2mem, { 1, 0, 2, 3 }
  uselistorder i32* %r3.3.reg2mem, { 1, 0, 2, 3 }
  uselistorder i32* %0, { 3, 2, 1, 0 }
  uselistorder i32 ()* @usleep.2, { 2, 1, 0 }
  uselistorder i32 (i32, i32, i32, i32)* @function_88f0, { 3, 1, 0, 2 }
  uselistorder i32 ()* @sleep.11, { 3, 0, 2, 1 }
  uselistorder i32 3000000, { 4, 0, 1, 3, 2, 6, 5 }
  uselistorder i32 (i32, i32, i32, i32)* @function_88d0, { 1, 2, 0 }
  uselistorder i32 ()* @gettimeofday.8, { 1, 0 }
  uselistorder i32 ()* @function_8910, { 3, 6, 5, 4, 1, 0, 2 }
  uselistorder label %dec_label_pc_8608.backedge, { 1, 0 }
  uselistorder label %dec_label_pc_8664, { 1, 0 }
  uselistorder label %dec_label_pc_8618, { 1, 0 }
  uselistorder label %dec_label_pc_8618.preheader, { 1, 0 }
  uselistorder label %dec_label_pc_85f4, { 1, 0 }
}

define i32 @entry_point(i32 %arg1, i32 %arg2) local_unnamed_addr {
dec_label_pc_879c:
  %0 = call i32 @__libc_start_main.14(), !insn.addr !72
  %1 = call i32 @abort.16(), !insn.addr !73
  ret i32 %1, !insn.addr !73
}

define i32 @function_87d8() local_unnamed_addr {
dec_label_pc_87d8:
  %0 = alloca i32
  %1 = load i32, i32* %0
  %2 = load i32, i32* @global_var_10d5c, align 4, !insn.addr !74
  %3 = icmp eq i32 %2, 0, !insn.addr !75
  br i1 %3, label %4, label %dec_label_pc_87f0, !insn.addr !76

; <label>:4:                                      ; preds = %dec_label_pc_87d8
  ret i32 %1, !insn.addr !76

dec_label_pc_87f0:                                ; preds = %dec_label_pc_87d8
  %5 = call i32 @function_8588(), !insn.addr !77
  ret i32 %5, !insn.addr !77
}

define i32 @function_87fc(i32 %arg1, i32 %arg2, i32 %arg3, i8 %arg4) local_unnamed_addr {
dec_label_pc_87fc:
  ret i32 ptrtoint (i8** @global_var_10d68 to i32), !insn.addr !78
}

define i32 @function_8834(i32* %arg1, i32 %arg2, i32 %arg3, i32 %arg4) local_unnamed_addr {
dec_label_pc_8834:
  ret i32 ptrtoint (i8** @global_var_10d68 to i32), !insn.addr !79
}

define i32 @function_8874() local_unnamed_addr {
dec_label_pc_8874:
  %0 = alloca i32
  %1 = load i32, i32* %0
  %2 = load i32, i32* %0
  %3 = load i32, i32* %0
  %4 = load i8, i8* bitcast (i8** @global_var_10d68 to i8*), align 4, !insn.addr !80
  %5 = icmp eq i8 %4, 0, !insn.addr !81
  br i1 %5, label %dec_label_pc_8888, label %6, !insn.addr !82

; <label>:6:                                      ; preds = %dec_label_pc_8874
  ret i32 %3, !insn.addr !82

dec_label_pc_8888:                                ; preds = %dec_label_pc_8874
  %7 = call i32 @function_87fc(i32 %3, i32 %2, i32 %1, i8 0), !insn.addr !83
  store i8 1, i8* bitcast (i8** @global_var_10d68 to i8*), align 4, !insn.addr !84
  ret i32 %7, !insn.addr !85

; uselistorder directives
  uselistorder i32 %3, { 1, 0 }
  uselistorder i32* %0, { 2, 1, 0 }
  uselistorder i8** @global_var_10d68, { 1, 0 }
}

define i32 @function_889c(i32 %arg1, i32 %arg2, i32 %arg3, i32 %arg4) local_unnamed_addr {
dec_label_pc_889c:
  %0 = call i32 @function_8834(i32* nonnull @global_var_10c24, i32 %arg2, i32 %arg3, i32 %arg4), !insn.addr !86
  ret i32 %0, !insn.addr !86
}

define i32 @function_88d0(i32 %arg1, i32 %arg2, i32 %arg3, i32 %arg4) local_unnamed_addr {
dec_label_pc_88d0:
  %0 = call i32 @system.15(), !insn.addr !87
  %1 = call i32 @system.15(), !insn.addr !88
  ret i32 %1, !insn.addr !88
}

define i32 @function_88f0(i32 %arg1, i32 %arg2, i32 %arg3, i32 %arg4) local_unnamed_addr {
dec_label_pc_88f0:
  %0 = call i32 @system.15(), !insn.addr !89
  %1 = call i32 @system.15(), !insn.addr !90
  ret i32 %1, !insn.addr !90

; uselistorder directives
  uselistorder i32 ()* @system.15, { 5, 4, 3, 2, 1, 0 }
}

define i32 @function_8910() local_unnamed_addr {
dec_label_pc_8910:
  %0 = alloca i32
  %r0.0.reg2mem = alloca i32, !insn.addr !91
  %1 = load i32, i32* %0
  %2 = call i32 @fopen.6(), !insn.addr !92
  %3 = icmp eq i32 %2, 0, !insn.addr !93
  br i1 %3, label %dec_label_pc_8954, label %dec_label_pc_892c, !insn.addr !94

dec_label_pc_892c:                                ; preds = %dec_label_pc_8910
  %4 = call i32 @fscanf.13(), !insn.addr !95
  %5 = call i32 @fclose.4(), !insn.addr !96
  %6 = icmp ne i32 %1, 0, !insn.addr !97
  %spec.store.select = zext i1 %6 to i32
  store i32 %spec.store.select, i32* %r0.0.reg2mem
  br label %dec_label_pc_894c

dec_label_pc_894c:                                ; preds = %dec_label_pc_892c, %dec_label_pc_8954
  %r0.0.reload = load i32, i32* %r0.0.reg2mem
  ret i32 %r0.0.reload, !insn.addr !98

dec_label_pc_8954:                                ; preds = %dec_label_pc_8910
  %7 = call i32 @puts.10(), !insn.addr !99
  store i32 -1, i32* %r0.0.reg2mem, !insn.addr !100
  br label %dec_label_pc_894c, !insn.addr !100

; uselistorder directives
  uselistorder i32* %r0.0.reg2mem, { 2, 0, 1 }
  uselistorder i32 ()* @puts.10, { 6, 5, 4, 3, 2, 1, 0 }
  uselistorder label %dec_label_pc_894c, { 1, 0 }
}

define i32 @function_8974(i32 %arg1, i32 %arg2, i32 %arg3, i32 %arg4) local_unnamed_addr {
dec_label_pc_8974:
  %0 = call i32 @function_84e4(i32 %arg1, i32 %arg2, i32 %arg3, i32 %arg4), !insn.addr !101
  %spec.select = select i1 icmp eq (i32 ashr (i32 sub (i32 add (i32 ptrtoint (i32* @global_var_828c to i32), i32 35220), i32 add (i32 ptrtoint (i32* @global_var_899c to i32), i32 ptrtoint (i32* @global_var_8280 to i32))), i32 2), i32 0), i32 %0, i32 %arg1
  ret i32 %spec.select, !insn.addr !102

; uselistorder directives
  uselistorder i32 0, { 4, 11, 12, 18, 1, 13, 14, 15, 16, 2, 0, 3, 17, 5, 6, 7, 8, 9, 10 }
}

define i32 @function_89d8() local_unnamed_addr {
dec_label_pc_89d8:
  %0 = alloca i32
  %1 = load i32, i32* %0
  ret i32 %1, !insn.addr !103

; uselistorder directives
  uselistorder i32 1, { 20, 21, 19, 18, 17, 39, 35, 37, 38, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, 36 }
}

define i32 @function_89dc(i32 %arg1, i32 %arg2, i32 %arg3, i32 %arg4) local_unnamed_addr {
dec_label_pc_89dc:
  ret i32 %arg1, !insn.addr !104
}

!0 = !{i64 34024}
!1 = !{i64 34028}
!2 = !{i64 34060}
!3 = !{i64 34072}
!4 = !{i64 34084}
!5 = !{i64 34096}
!6 = !{i64 34108}
!7 = !{i64 34120}
!8 = !{i64 34132}
!9 = !{i64 34144}
!10 = !{i64 34156}
!11 = !{i64 34168}
!12 = !{i64 34180}
!13 = !{i64 34192}
!14 = !{i64 34204}
!15 = !{i64 34216}
!16 = !{i64 34228}
!17 = !{i64 34240}
!18 = !{i64 34244}
!19 = !{i64 34272}
!20 = !{i64 34280}
!21 = !{i64 34284}
!22 = !{i64 34288}
!23 = !{i64 34296}
!24 = !{i64 34300}
!25 = !{i64 34308}
!26 = !{i64 34316}
!27 = !{i64 34320}
!28 = !{i64 34324}
!29 = !{i64 34336}
!30 = !{i64 34388}
!31 = !{i64 34396}
!32 = !{i64 34440}
!33 = !{i64 34444}
!34 = !{i64 34448}
!35 = !{i64 34412}
!36 = !{i64 34420}
!37 = !{i64 34424}
!38 = !{i64 34432}
!39 = !{i64 34464}
!40 = !{i64 34468}
!41 = !{i64 34472}
!42 = !{i64 34476}
!43 = !{i64 34480}
!44 = !{i64 34492}
!45 = !{i64 34500}
!46 = !{i64 34504}
!47 = !{i64 34516}
!48 = !{i64 34520}
!49 = !{i64 34532}
!50 = !{i64 34536}
!51 = !{i64 34540}
!52 = !{i64 34548}
!53 = !{i64 34556}
!54 = !{i64 34560}
!55 = !{i64 34564}
!56 = !{i64 34568}
!57 = !{i64 34576}
!58 = !{i64 34580}
!59 = !{i64 34584}
!60 = !{i64 34592}
!61 = !{i64 34596}
!62 = !{i64 34608}
!63 = !{i64 34612}
!64 = !{i64 34620}
!65 = !{i64 34624}
!66 = !{i64 34628}
!67 = !{i64 34636}
!68 = !{i64 34648}
!69 = !{i64 34656}
!70 = !{i64 34664}
!71 = !{i64 34668}
!72 = !{i64 34756}
!73 = !{i64 34760}
!74 = !{i64 34788}
!75 = !{i64 34792}
!76 = !{i64 34796}
!77 = !{i64 34800}
!78 = !{i64 34832}
!79 = !{i64 34896}
!80 = !{i64 34940}
!81 = !{i64 34944}
!82 = !{i64 34948}
!83 = !{i64 34952}
!84 = !{i64 34960}
!85 = !{i64 34964}
!86 = !{i64 35012}
!87 = !{i64 35036}
!88 = !{i64 35052}
!89 = !{i64 35068}
!90 = !{i64 35084}
!91 = !{i64 35088}
!92 = !{i64 35104}
!93 = !{i64 35108}
!94 = !{i64 35112}
!95 = !{i64 35124}
!96 = !{i64 35132}
!97 = !{i64 35140}
!98 = !{i64 35152}
!99 = !{i64 35160}
!100 = !{i64 35168}
!101 = !{i64 35216}
!102 = !{i64 35232}
!103 = !{i64 35288}
!104 = !{i64 35296}
