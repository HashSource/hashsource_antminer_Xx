source_filename = "test"
target datalayout = "e-p:32:32:32-f80:32:32"

%_IO_FILE = type { i32 }
%hostent = type { i8*, i8**, i32, i32, i8** }
%sockaddr = type { i32, [14 x i8] }

@global_var_2200c = local_unnamed_addr global i32 67816
@global_var_22010 = local_unnamed_addr global i32 67816
@global_var_22014 = local_unnamed_addr global i32 67816
@global_var_22018 = local_unnamed_addr global i32 67816
@global_var_2201c = local_unnamed_addr global i32 67816
@global_var_22020 = local_unnamed_addr global i32 67816
@global_var_22024 = local_unnamed_addr global i32 67816
@global_var_22028 = local_unnamed_addr global i32 67816
@global_var_2202c = local_unnamed_addr global i32 67816
@global_var_22030 = local_unnamed_addr global i32 67816
@global_var_22034 = local_unnamed_addr global i32 67816
@global_var_22038 = local_unnamed_addr global i32 67816
@global_var_2203c = local_unnamed_addr global i32 67816
@global_var_22040 = local_unnamed_addr global i32 67816
@global_var_22044 = local_unnamed_addr global i32 67816
@global_var_22048 = local_unnamed_addr global i32 67816
@global_var_2204c = local_unnamed_addr global i32 67816
@global_var_22050 = local_unnamed_addr global i32 67816
@global_var_22054 = local_unnamed_addr global i32 67816
@global_var_22058 = local_unnamed_addr global i32 67816
@global_var_2205c = local_unnamed_addr global i32 67816
@global_var_22060 = local_unnamed_addr global i32 67816
@global_var_22064 = local_unnamed_addr global i32 67816
@global_var_22068 = local_unnamed_addr global i32 67816
@global_var_11428 = constant [7 x i8] c"--help\00"
@global_var_11414 = constant [8 x i8] c"summary\00"
@global_var_1141c = constant [10 x i8] c"127.0.0.1\00"
@global_var_22080 = local_unnamed_addr global i32 0
@global_var_11430 = constant [38 x i8] c"usAge: %s [command [ip/host [port]]]\0A\00"
@global_var_10bfc = local_unnamed_addr constant i32 70672
@global_var_11410 = constant i32 0
@global_var_10c00 = local_unnamed_addr constant i32 108
@global_var_10bf0 = constant i32 -481165312
@global_var_1125c = constant [13 x i8] c"[%s%s] =>\0A(\0A\00"
@global_var_1127c = constant [15 x i8] c"   [%d] => %s\0A\00"
@global_var_1126c = constant [15 x i8] c"   [%s] => %s\0A\00"
@global_var_11254 = local_unnamed_addr constant i32 1
@global_var_11258 = local_unnamed_addr constant i32 60
@global_var_11290 = constant [29 x i8] c"Couldn't get hostname: '%s'\0A\00"
@global_var_112b0 = constant [34 x i8] c"Socket initialisation failed: %s\0A\00"
@global_var_112d4 = constant [27 x i8] c"Socket connect failed: %s\0A\00"
@global_var_11350 = constant [48 x i8] c"cgminer-api, setsocket SO_RCVTIMEO failed (%s)\0A\00"
@global_var_11320 = constant [48 x i8] c"cgminer-api, setsocket SO_SNDTIMEO failed (%s)\0A\00"
@global_var_112f0 = constant [46 x i8] c"cgminer-api, setsocket SO_LINGER failed (%s)\0A\00"
@global_var_11380 = constant [29 x i8] c"cgminer api send failed: %s\0A\00"
@global_var_113b8 = constant [27 x i8] c"cgminer realloc: OOM (%d)\0A\00"
@global_var_113a0 = constant [23 x i8] c"cgminer api: OOM (%d)\0A\00"
@global_var_113d4 = constant [17 x i8] c"Recv failed: %s\0A\00"
@global_var_113e8 = constant [41 x i8] c"Recv failed: api server close the socket\00"
@global_var_1123c = local_unnamed_addr constant i32 68858
@global_var_11240 = local_unnamed_addr constant i32 68848
@global_var_21f10 = global i32 68717
@0 = external global i32
@global_var_22078 = local_unnamed_addr global %_IO_FILE* null
@global_var_10bd8 = local_unnamed_addr constant void ()* inttoptr (i32 68124 to void ()*)
@global_var_10bdc = local_unnamed_addr constant void ()* inttoptr (i32 70153 to void ()*)
@global_var_112ac = external constant i8*
@1 = internal constant [2 x i8] c")\00"
@2 = constant i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1, i32 0, i32 0)
@global_var_1128c = constant [2 x i8] c")\00"

declare i32 @unknown_240() local_unnamed_addr

define i32 @_init(i32 %arg1, i32 %arg2, i32 %arg3, i32 %arg4) local_unnamed_addr {
dec_label_pc_108dc:
  %0 = call i32 @function_10be0(), !insn.addr !0
  ret i32 %0, !insn.addr !1
}

define i32 @function_108fc(i8* %s1, i8* %s2) local_unnamed_addr {
dec_label_pc_108fc:
  %0 = call i32 @strcmp(i8* %s1, i8* %s2), !insn.addr !2
  ret i32 %0, !insn.addr !2
}

define i32 @function_10908(i8* %nptr, i8** %endptr, i32 %base) local_unnamed_addr {
dec_label_pc_10908:
  %0 = call i32 @strtol(i8* %nptr, i8** %endptr, i32 %base), !insn.addr !3
  ret i32 %0, !insn.addr !3
}

define i32 @function_10914(i32 %fd, i32 %level, i32 %optname, i32* %optval, i32 %optlen) local_unnamed_addr {
dec_label_pc_10914:
  %0 = call i32 @setsockopt(i32 %fd, i32 %level, i32 %optname, i32* %optval, i32 %optlen), !insn.addr !4
  ret i32 %0, !insn.addr !4
}

define i32 @function_10920(i8* %format, ...) local_unnamed_addr {
dec_label_pc_10920:
  %0 = call i32 (i8*, ...) @printf(i8* %format), !insn.addr !5
  ret i32 %0, !insn.addr !5
}

define void @function_1092c(i32* %ptr) local_unnamed_addr {
dec_label_pc_1092c:
  call void @free(i32* %ptr), !insn.addr !6
  ret void, !insn.addr !6
}

define i32* @function_10938(i32* %ptr, i32 %size) local_unnamed_addr {
dec_label_pc_10938:
  %0 = call i32* @realloc(i32* %ptr, i32 %size), !insn.addr !7
  ret i32* %0, !insn.addr !7
}

define i32* @function_10944(i32* %s, i32 %c) local_unnamed_addr {
dec_label_pc_10944:
  %0 = call i32* @__rawmemchr(i32* %s, i32 %c), !insn.addr !8
  ret i32* %0, !insn.addr !8
}

define i32 @function_10950(i8* %s) local_unnamed_addr {
dec_label_pc_10950:
  %0 = call i32 @puts(i8* %s), !insn.addr !9
  ret i32 %0, !insn.addr !9
}

define i32* @function_1095c(i32 %size) local_unnamed_addr {
dec_label_pc_1095c:
  %0 = call i32* @malloc(i32 %size), !insn.addr !10
  ret i32* %0, !insn.addr !10
}

define i32 @function_10968(i32 %main, i32 %argc, i8** %ubp_av, void ()* %init, void ()* %fini, void ()* %rtld_fini) local_unnamed_addr {
dec_label_pc_10968:
  %0 = call i32 @__libc_start_main(i32 %main, i32 %argc, i8** %ubp_av, void ()* %init, void ()* %fini, void ()* %rtld_fini), !insn.addr !11
  ret i32 %0, !insn.addr !11
}

define i8* @function_10974(i32 %errnum) local_unnamed_addr {
dec_label_pc_10974:
  %0 = call i8* @strerror(i32 %errnum), !insn.addr !12
  ret i8* %0, !insn.addr !12
}

define void @function_10980() local_unnamed_addr {
dec_label_pc_10980:
  call void @__gmon_start__(), !insn.addr !13
  ret void, !insn.addr !13
}

define i16** @function_1098c() local_unnamed_addr {
dec_label_pc_1098c:
  %0 = call i16** @__ctype_b_loc(), !insn.addr !14
  ret i16** %0, !insn.addr !14
}

define i32 @function_10998(i8* %s) local_unnamed_addr {
dec_label_pc_10998:
  %0 = call i32 @strlen(i8* %s), !insn.addr !15
  ret i32 %0, !insn.addr !15
}

define i8* @function_109a4(i8* %s, i32 %c) local_unnamed_addr {
dec_label_pc_109a4:
  %0 = call i8* @strchr(i8* %s, i32 %c), !insn.addr !16
  ret i8* %0, !insn.addr !16
}

define i32 @function_109b0(%_IO_FILE* %stream, i8* %format, ...) local_unnamed_addr {
dec_label_pc_109b0:
  %0 = call i32 (%_IO_FILE*, i8*, ...) @fprintf(%_IO_FILE* %stream, i8* %format), !insn.addr !17
  ret i32 %0, !insn.addr !17
}

define i32* @function_109bc() local_unnamed_addr {
dec_label_pc_109bc:
  %0 = call i32* @__errno_location(), !insn.addr !18
  ret i32* %0, !insn.addr !18
}

define i32 @function_109c8(i32 %domain, i32 %type, i32 %protocol) local_unnamed_addr {
dec_label_pc_109c8:
  %0 = call i32 @socket(i32 %domain, i32 %type, i32 %protocol), !insn.addr !19
  ret i32 %0, !insn.addr !19
}

define %hostent* @function_109d4(i8* %name) local_unnamed_addr {
dec_label_pc_109d4:
  %0 = call %hostent* @gethostbyname(i8* %name), !insn.addr !20
  ret %hostent* %0, !insn.addr !20
}

define void @function_109e0() local_unnamed_addr {
dec_label_pc_109e0:
  call void @abort(), !insn.addr !21
  ret void, !insn.addr !21
}

define i32 @function_109ec(i32 %fd, i32* %buf, i32 %n, i32 %flags) local_unnamed_addr {
dec_label_pc_109ec:
  %0 = call i32 @recv(i32 %fd, i32* %buf, i32 %n, i32 %flags), !insn.addr !22
  ret i32 %0, !insn.addr !22
}

define i32 @function_109f8(i32 %fd) local_unnamed_addr {
dec_label_pc_109f8:
  %0 = call i32 @close(i32 %fd), !insn.addr !23
  ret i32 %0, !insn.addr !23
}

define i32 @function_10a04(i32 %fd, i32* %buf, i32 %n, i32 %flags) local_unnamed_addr {
dec_label_pc_10a04:
  %0 = call i32 @send(i32 %fd, i32* %buf, i32 %n, i32 %flags), !insn.addr !24
  ret i32 %0, !insn.addr !24
}

define i32 @function_10a10(i32 %fd, %sockaddr* %addr, i32 %len) local_unnamed_addr {
dec_label_pc_10a10:
  %0 = call i32 @connect(i32 %fd, %sockaddr* %addr, i32 %len), !insn.addr !25
  ret i32 %0, !insn.addr !25
}

define i32 @main(i32 %argc, i8** %argv) local_unnamed_addr {
dec_label_pc_10a1c:
  %r1.0.reg2mem = alloca i32, !insn.addr !26
  %r7.1.reg2mem = alloca i32, !insn.addr !26
  %r5.3.reg2mem = alloca i32, !insn.addr !26
  %r2.0.reg2mem = alloca i32, !insn.addr !26
  %r5.0.reg2mem = alloca i32, !insn.addr !26
  %0 = icmp slt i32 %argc, 2, !insn.addr !27
  store i32 4028, i32* %r2.0.reg2mem, !insn.addr !27
  store i32 ptrtoint ([10 x i8]* @global_var_1141c to i32), i32* %r5.3.reg2mem, !insn.addr !27
  store i32 ptrtoint ([8 x i8]* @global_var_11414 to i32), i32* %r7.1.reg2mem, !insn.addr !27
  br i1 %0, label %dec_label_pc_10b44, label %dec_label_pc_10a28, !insn.addr !27

dec_label_pc_10a28:                               ; preds = %dec_label_pc_10a1c
  %1 = ptrtoint i8** %argv to i32
  %2 = add i32 %1, 4, !insn.addr !28
  %3 = inttoptr i32 %2 to i32*, !insn.addr !28
  %4 = load i32, i32* %3, align 4, !insn.addr !28
  %5 = inttoptr i32 %4 to i8*, !insn.addr !29
  %6 = load i8, i8* %5, align 1, !insn.addr !29
  %7 = icmp eq i8 %6, 45, !insn.addr !30
  br i1 %7, label %dec_label_pc_10ad0, label %dec_label_pc_10a40, !insn.addr !31

dec_label_pc_10a40:                               ; preds = %dec_label_pc_10b5c, %dec_label_pc_10a28
  %8 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_var_11428, i32 0, i32 0)), !insn.addr !32
  %9 = icmp eq i32 %8, 0, !insn.addr !33
  store i32 1, i32* %r5.0.reg2mem, !insn.addr !34
  store i32 ptrtoint ([7 x i8]* @global_var_11428 to i32), i32* %r1.0.reg2mem, !insn.addr !34
  br i1 %9, label %dec_label_pc_10b68, label %dec_label_pc_10a5c, !insn.addr !34

dec_label_pc_10a5c:                               ; preds = %dec_label_pc_10a40, %dec_label_pc_10b00, %dec_label_pc_10b08, %dec_label_pc_10b14
  %r5.0.reload = load i32, i32* %r5.0.reg2mem
  %10 = mul i32 %r5.0.reload, 4, !insn.addr !35
  %11 = add i32 %10, %1, !insn.addr !35
  %12 = inttoptr i32 %11 to i32*, !insn.addr !35
  %13 = load i32, i32* %12, align 4, !insn.addr !35
  %14 = add nuw nsw i32 %r5.0.reload, 1, !insn.addr !36
  %15 = call i32 @function_10c70(i32 %13), !insn.addr !37
  %16 = inttoptr i32 %15 to i8*, !insn.addr !38
  %17 = load i8, i8* %16, align 1, !insn.addr !38
  %18 = icmp eq i8 %17, 0, !insn.addr !39
  %spec.select = select i1 %18, i32 ptrtoint ([8 x i8]* @global_var_11414 to i32), i32 %15
  %19 = icmp slt i32 %14, %argc, !insn.addr !40
  store i32 4028, i32* %r2.0.reg2mem, !insn.addr !40
  store i32 ptrtoint ([10 x i8]* @global_var_1141c to i32), i32* %r5.3.reg2mem, !insn.addr !40
  store i32 %spec.select, i32* %r7.1.reg2mem, !insn.addr !40
  br i1 %19, label %dec_label_pc_10a88, label %dec_label_pc_10b44, !insn.addr !40

dec_label_pc_10a88:                               ; preds = %dec_label_pc_10a5c
  %20 = add nuw nsw i32 %r5.0.reload, 2, !insn.addr !41
  %21 = add i32 %11, 4, !insn.addr !42
  %22 = inttoptr i32 %21 to i32*, !insn.addr !42
  %23 = load i32, i32* %22, align 4, !insn.addr !42
  %24 = call i32 @function_10c70(i32 %23), !insn.addr !43
  %25 = inttoptr i32 %24 to i8*, !insn.addr !44
  %26 = load i8, i8* %25, align 1, !insn.addr !44
  %27 = icmp eq i8 %26, 0, !insn.addr !45
  %spec.select1 = select i1 %27, i32 ptrtoint ([10 x i8]* @global_var_1141c to i32), i32 %24
  %28 = icmp slt i32 %20, %argc, !insn.addr !46
  store i32 4028, i32* %r2.0.reg2mem, !insn.addr !46
  store i32 %spec.select1, i32* %r5.3.reg2mem, !insn.addr !46
  store i32 %spec.select, i32* %r7.1.reg2mem, !insn.addr !46
  br i1 %28, label %dec_label_pc_10ab4, label %dec_label_pc_10b44, !insn.addr !46

dec_label_pc_10ab4:                               ; preds = %dec_label_pc_10a88
  %29 = add i32 %11, 8, !insn.addr !47
  %30 = inttoptr i32 %29 to i32*, !insn.addr !47
  %31 = load i32, i32* %30, align 4, !insn.addr !47
  %32 = call i32 @function_10c70(i32 %31), !insn.addr !48
  %33 = inttoptr i32 %32 to i8*, !insn.addr !49
  %34 = load i8, i8* %33, align 1, !insn.addr !49
  %35 = icmp eq i8 %34, 0, !insn.addr !50
  store i32 4028, i32* %r2.0.reg2mem, !insn.addr !51
  store i32 %spec.select1, i32* %r5.3.reg2mem, !insn.addr !51
  store i32 %spec.select, i32* %r7.1.reg2mem, !insn.addr !51
  br i1 %35, label %dec_label_pc_10b44, label %dec_label_pc_10b8c, !insn.addr !51

dec_label_pc_10ad0:                               ; preds = %dec_label_pc_10a28
  %36 = add i32 %4, 1, !insn.addr !52
  %37 = inttoptr i32 %36 to i8*, !insn.addr !52
  %38 = load i8, i8* %37, align 1, !insn.addr !52
  switch i8 %38, label %dec_label_pc_10ae8 [
    i8 63, label %dec_label_pc_10adc
    i8 104, label %dec_label_pc_10b5c
  ]

dec_label_pc_10adc:                               ; preds = %dec_label_pc_10ad0
  %39 = add i32 %4, 2, !insn.addr !53
  %40 = inttoptr i32 %39 to i8*, !insn.addr !53
  %41 = load i8, i8* %40, align 1, !insn.addr !53
  %42 = icmp eq i8 %41, 0, !insn.addr !54
  store i32 %1, i32* %r1.0.reg2mem, !insn.addr !55
  br i1 %42, label %dec_label_pc_10b68, label %dec_label_pc_10ae8, !insn.addr !55

dec_label_pc_10ae8:                               ; preds = %dec_label_pc_10ad0, %dec_label_pc_10adc
  %43 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_var_11428, i32 0, i32 0)), !insn.addr !56
  %44 = icmp eq i32 %43, 0, !insn.addr !57
  store i32 ptrtoint ([7 x i8]* @global_var_11428 to i32), i32* %r1.0.reg2mem, !insn.addr !58
  br i1 %44, label %dec_label_pc_10b68, label %dec_label_pc_10b00, !insn.addr !58

dec_label_pc_10b00:                               ; preds = %dec_label_pc_10ae8
  %45 = icmp eq i8 %38, 111, !insn.addr !59
  store i32 1, i32* %r5.0.reg2mem, !insn.addr !60
  br i1 %45, label %dec_label_pc_10b08, label %dec_label_pc_10a5c, !insn.addr !60

dec_label_pc_10b08:                               ; preds = %dec_label_pc_10b00
  %46 = add i32 %4, 2, !insn.addr !61
  %47 = inttoptr i32 %46 to i8*, !insn.addr !61
  %48 = load i8, i8* %47, align 1, !insn.addr !61
  %49 = icmp eq i8 %48, 0, !insn.addr !62
  store i32 1, i32* %r5.0.reg2mem, !insn.addr !63
  br i1 %49, label %dec_label_pc_10b14, label %dec_label_pc_10a5c, !insn.addr !63

dec_label_pc_10b14:                               ; preds = %dec_label_pc_10b08
  %50 = icmp eq i32 %argc, 2, !insn.addr !64
  store i32 1, i32* @global_var_22080, align 4, !insn.addr !65
  store i32 2, i32* %r5.0.reg2mem, !insn.addr !66
  store i32 4028, i32* %r2.0.reg2mem, !insn.addr !66
  store i32 ptrtoint ([10 x i8]* @global_var_1141c to i32), i32* %r5.3.reg2mem, !insn.addr !66
  store i32 ptrtoint ([8 x i8]* @global_var_11414 to i32), i32* %r7.1.reg2mem, !insn.addr !66
  br i1 %50, label %dec_label_pc_10b44, label %dec_label_pc_10a5c, !insn.addr !66

dec_label_pc_10b44:                               ; preds = %dec_label_pc_10a5c, %dec_label_pc_10a1c, %dec_label_pc_10b14, %dec_label_pc_10a88, %dec_label_pc_10ab4, %dec_label_pc_10b8c
  %r7.1.reload = load i32, i32* %r7.1.reg2mem
  %r5.3.reload = load i32, i32* %r5.3.reg2mem
  %r2.0.reload = load i32, i32* %r2.0.reg2mem
  %51 = call i32 @callapi(i32 %r7.1.reload, i32 %r5.3.reload, i32 %r2.0.reload), !insn.addr !67
  ret i32 %51, !insn.addr !67

dec_label_pc_10b5c:                               ; preds = %dec_label_pc_10ad0
  %52 = add i32 %4, 2, !insn.addr !68
  %53 = inttoptr i32 %52 to i8*, !insn.addr !68
  %54 = load i8, i8* %53, align 1, !insn.addr !68
  %55 = icmp eq i8 %54, 0, !insn.addr !69
  store i32 %1, i32* %r1.0.reg2mem, !insn.addr !70
  br i1 %55, label %dec_label_pc_10b68, label %dec_label_pc_10a40, !insn.addr !70

dec_label_pc_10b68:                               ; preds = %dec_label_pc_10b5c, %dec_label_pc_10ae8, %dec_label_pc_10adc, %dec_label_pc_10a40
  %r1.0.reload = load i32, i32* %r1.0.reg2mem
  %56 = load %_IO_FILE*, %_IO_FILE** @global_var_22078, align 4, !insn.addr !71
  %57 = inttoptr i32 %r1.0.reload to i8*, !insn.addr !72
  %58 = call i32 (%_IO_FILE*, i8*, ...) @fprintf(%_IO_FILE* %56, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @global_var_11430, i32 0, i32 0), i8* %57), !insn.addr !72
  ret i32 1, !insn.addr !73

dec_label_pc_10b8c:                               ; preds = %dec_label_pc_10ab4
  %59 = call i32 @strtol(i8* %33, i8** null, i32 10), !insn.addr !74
  %60 = call i32 @__asm_sxth(i32 %59), !insn.addr !75
  store i32 %60, i32* %r2.0.reg2mem, !insn.addr !76
  store i32 %spec.select1, i32* %r5.3.reg2mem, !insn.addr !76
  store i32 %spec.select, i32* %r7.1.reg2mem, !insn.addr !76
  br label %dec_label_pc_10b44, !insn.addr !76

; uselistorder directives
  uselistorder i8 %38, { 1, 0 }
  uselistorder i32 %spec.select1, { 2, 1, 0 }
  uselistorder i32 %spec.select, { 3, 2, 1, 0 }
  uselistorder i32 %11, { 1, 0, 2 }
  uselistorder i32 %r5.0.reload, { 1, 0, 2 }
  uselistorder i8* %5, { 1, 0, 2 }
  uselistorder i32* %r5.0.reg2mem, { 4, 3, 2, 0, 1 }
  uselistorder i32* %r2.0.reg2mem, { 6, 0, 3, 5, 4, 1, 2 }
  uselistorder i32* %r5.3.reg2mem, { 6, 0, 3, 5, 4, 1, 2 }
  uselistorder i32* %r7.1.reg2mem, { 6, 0, 3, 5, 4, 1, 2 }
  uselistorder i32* %r1.0.reg2mem, { 0, 2, 3, 4, 1 }
  uselistorder i32 (i32)* @function_10c70, { 2, 1, 0 }
  uselistorder i32 ptrtoint ([7 x i8]* @global_var_11428 to i32), { 1, 0 }
  uselistorder [7 x i8]* @global_var_11428, { 1, 0 }
  uselistorder i32 4, { 1, 0, 2 }
  uselistorder i32 ptrtoint ([8 x i8]* @global_var_11414 to i32), { 1, 2, 0 }
  uselistorder i32 ptrtoint ([10 x i8]* @global_var_1141c to i32), { 2, 3, 0, 1 }
  uselistorder i32 4028, { 2, 4, 3, 0, 1 }
  uselistorder i32 %argc, { 2, 0, 1, 3 }
  uselistorder label %dec_label_pc_10b44, { 5, 2, 4, 3, 0, 1 }
  uselistorder label %dec_label_pc_10ae8, { 1, 0 }
  uselistorder label %dec_label_pc_10a5c, { 3, 2, 1, 0 }
}

define i32 @_start(i32 %arg1, i32 %arg2) local_unnamed_addr {
dec_label_pc_10bb0:
  %stack_var_4 = alloca i32, align 4
  %0 = bitcast i32* %stack_var_4 to i8**, !insn.addr !77
  %1 = inttoptr i32 %arg1 to void ()*, !insn.addr !77
  %2 = call i32 @__libc_start_main(i32 68124, i32 %arg2, i8** nonnull %0, void ()* inttoptr (i32 70153 to void ()*), void ()* inttoptr (i32 68124 to void ()*), void ()* %1), !insn.addr !77
  call void @abort(), !insn.addr !78
  unreachable, !insn.addr !78
}

define i32 @function_10bd4(i32 %arg1) local_unnamed_addr {
dec_label_pc_10bd4:
  ret i32 %arg1, !insn.addr !79
}

define i32 @function_10be0() local_unnamed_addr {
dec_label_pc_10be0:
  %0 = alloca i32
  %1 = load i32, i32* %0
  %2 = load i32, i32* inttoptr (i32 add (i32 add (i32 ptrtoint (i32* @global_var_10bf0 to i32), i32 ptrtoint (i32* @global_var_11410 to i32)), i32 108) to i32*), align 4, !insn.addr !80
  %3 = icmp eq i32 %2, 0, !insn.addr !81
  br i1 %3, label %4, label %dec_label_pc_10bf8, !insn.addr !82

; <label>:4:                                      ; preds = %dec_label_pc_10be0
  ret i32 %1, !insn.addr !82

dec_label_pc_10bf8:                               ; preds = %dec_label_pc_10be0
  call void @__gmon_start__(), !insn.addr !83
  ret i32 ptrtoint (i32* @0 to i32), !insn.addr !83
}

define i32 @function_10c04(i32 %arg1, i32 %arg2, i32 %arg3, i32 %arg4) local_unnamed_addr {
dec_label_pc_10c04:
  %0 = alloca i32
  %1 = alloca i1
  %2 = alloca double
  %cpsr_n.23.reg2mem = alloca i1, !insn.addr !84
  %spec.select4.reg2mem = alloca i32, !insn.addr !84
  %3 = load i1, i1* %1
  %4 = load i1, i1* %1
  %5 = load i1, i1* %1
  %6 = load i32, i32* %0
  %7 = load double, double* %2
  %8 = load double, double* %2
  br i1 %4, label %9, label %dec_label_pc_10c20, !insn.addr !84

; <label>:9:                                      ; preds = %28, %25, %dec_label_pc_10c04
  ret i32 %arg1, !insn.addr !84

dec_label_pc_10c20:                               ; preds = %dec_label_pc_10c04
  %10 = icmp eq i1 %5, %3, !insn.addr !85
  br i1 %10, label %dec_label_pc_10c34, label %11, !insn.addr !85

; <label>:11:                                     ; preds = %dec_label_pc_10c20
  call void @__asm_svclt(i32 18288), !insn.addr !85
  br label %dec_label_pc_10c34, !insn.addr !85

dec_label_pc_10c34:                               ; preds = %11, %dec_label_pc_10c20
  %12 = mul i32 %6, 1048577, !insn.addr !86
  br i1 %3, label %.thread, label %13, !insn.addr !87

.thread:                                          ; preds = %dec_label_pc_10c34
  %spec.select2 = select i1 %5, i32 %12, i32 0
  store i32 %spec.select2, i32* %spec.select4.reg2mem
  br label %dec_label_pc_10c4c

; <label>:13:                                     ; preds = %dec_label_pc_10c34
  %14 = mul i32 %6, 4194304, !insn.addr !87
  %15 = sub i32 0, %14
  %16 = sub i32 %15, 1
  %17 = and i32 %12, %16, !insn.addr !87
  %18 = icmp slt i32 %17, 0, !insn.addr !87
  %19 = icmp eq i32 %17, 0, !insn.addr !87
  %20 = icmp slt i32 %17, 1
  %spec.select = select i1 %20, i32 0, i32 %12
  store i32 %spec.select, i32* %spec.select4.reg2mem, !insn.addr !88
  store i1 %18, i1* %cpsr_n.23.reg2mem, !insn.addr !88
  br i1 %19, label %21, label %dec_label_pc_10c4c, !insn.addr !88

; <label>:21:                                     ; preds = %13
  %22 = call i32 @unknown_240(), !insn.addr !88
  ret i32 %22, !insn.addr !88

dec_label_pc_10c4c:                               ; preds = %.thread, %13
  %cpsr_n.23.reload = load i1, i1* %cpsr_n.23.reg2mem
  %spec.select4.reload = load i32, i32* %spec.select4.reg2mem
  %23 = icmp eq i1 %cpsr_n.23.reload, %3, !insn.addr !89
  br i1 %23, label %25, label %24, !insn.addr !89

; <label>:24:                                     ; preds = %dec_label_pc_10c4c
  call void @__asm_svclt(i32 18288), !insn.addr !89
  br label %25, !insn.addr !89

; <label>:25:                                     ; preds = %dec_label_pc_10c4c, %24
  %26 = call double @__asm_vqrshl.s8(double %8, double %7), !insn.addr !90
  %27 = call fp128 @__asm_vmvn.i32(i32 786432), !insn.addr !91
  br i1 %3, label %9, label %28, !insn.addr !92

; <label>:28:                                     ; preds = %25
  %29 = inttoptr i32 %arg4 to i32*, !insn.addr !92
  store i32 %spec.select4.reload, i32* %29, align 4, !insn.addr !92
  %30 = add i32 %arg4, -4, !insn.addr !92
  %31 = inttoptr i32 %30 to i32*, !insn.addr !92
  br label %9, !insn.addr !92

; uselistorder directives
  uselistorder i32 %12, { 1, 2, 0 }
  uselistorder i32 %6, { 1, 0 }
  uselistorder i1 %5, { 1, 0 }
  uselistorder i1 %3, { 1, 2, 3, 0 }
  uselistorder double* %2, { 1, 0 }
  uselistorder i1* %1, { 2, 1, 0 }
  uselistorder i32 %arg4, { 1, 0 }
  uselistorder label %25, { 1, 0 }
  uselistorder label %dec_label_pc_10c4c, { 1, 0 }
}

define i32 @function_10c60(i32 %arg1, i32 %arg2, i32 %arg3, i32 %arg4, i32 %arg5) local_unnamed_addr {
dec_label_pc_10c60:
  %0 = alloca i32
  %r0.0.reg2mem = alloca i32, !insn.addr !93
  %1 = load i32, i32* %0
  %2 = icmp eq i32 %arg4, 0, !insn.addr !93
  store i32 %arg1, i32* %r0.0.reg2mem, !insn.addr !93
  br i1 %2, label %dec_label_pc_10c62, label %dec_label_pc_10c6a, !insn.addr !93

dec_label_pc_10c62:                               ; preds = %dec_label_pc_10c60
  %3 = call i32 @function_10c04(i32 %arg1, i32 %arg2, i32 %arg3, i32 0), !insn.addr !94
  %4 = inttoptr i32 %1 to i8*, !insn.addr !95
  store i8 1, i8* %4, align 1, !insn.addr !95
  store i32 %3, i32* %r0.0.reg2mem, !insn.addr !95
  br label %dec_label_pc_10c6a, !insn.addr !95

dec_label_pc_10c6a:                               ; preds = %dec_label_pc_10c60, %dec_label_pc_10c62
  %r0.0.reload = load i32, i32* %r0.0.reg2mem
  ret i32 %r0.0.reload, !insn.addr !96

; uselistorder directives
  uselistorder i32* %r0.0.reg2mem, { 0, 2, 1 }
  uselistorder i32 %arg1, { 1, 0 }
  uselistorder label %dec_label_pc_10c6a, { 1, 0 }
}

define i32 @function_10c6c() local_unnamed_addr {
dec_label_pc_10c6c:
  %0 = alloca i32
  %1 = load i32, i32* %0
  ret i32 %1, !insn.addr !97
}

define i32 @function_10c70(i32 %arg1) local_unnamed_addr {
dec_label_pc_10c70:
  %r0.11.reg2mem = alloca i32, !insn.addr !98
  %r0.0.reg2mem = alloca i32, !insn.addr !98
  %0 = call i16** @__ctype_b_loc(), !insn.addr !99
  %1 = load i16*, i16** %0, align 4, !insn.addr !100
  %2 = ptrtoint i16* %1 to i32, !insn.addr !100
  store i32 %arg1, i32* %r0.0.reg2mem, !insn.addr !101
  br label %dec_label_pc_10c88, !insn.addr !101

dec_label_pc_10c88:                               ; preds = %dec_label_pc_10c88, %dec_label_pc_10c70
  %r0.0.reload = load i32, i32* %r0.0.reg2mem
  %3 = add i32 %r0.0.reload, 1, !insn.addr !102
  %4 = inttoptr i32 %r0.0.reload to i8*, !insn.addr !103
  %5 = load i8, i8* %4, align 1, !insn.addr !103
  %6 = zext i8 %5 to i32, !insn.addr !103
  %7 = mul i32 %6, 2, !insn.addr !104
  %8 = add i32 %7, %2, !insn.addr !105
  %9 = inttoptr i32 %8 to i16*, !insn.addr !105
  %10 = load i16, i16* %9, align 2, !insn.addr !105
  %11 = and i16 %10, 8192
  %12 = icmp eq i16 %11, 0, !insn.addr !106
  store i32 %3, i32* %r0.0.reg2mem, !insn.addr !107
  br i1 %12, label %dec_label_pc_10ca4, label %dec_label_pc_10c88, !insn.addr !107

dec_label_pc_10ca4:                               ; preds = %dec_label_pc_10c88
  %13 = inttoptr i32 %r0.0.reload to i32*, !insn.addr !108
  %14 = call i32* @__rawmemchr(i32* %13, i32 0), !insn.addr !108
  %15 = ptrtoint i32* %14 to i32, !insn.addr !108
  %16 = icmp ult i32 %r0.0.reload, %15, !insn.addr !109
  br i1 %16, label %dec_label_pc_10cb8.lr.ph, label %dec_label_pc_10cd8, !insn.addr !110

dec_label_pc_10cb8.lr.ph:                         ; preds = %dec_label_pc_10ca4
  store i32 %15, i32* %r0.11.reg2mem
  br label %dec_label_pc_10cb8

dec_label_pc_10cb8:                               ; preds = %dec_label_pc_10cb8.lr.ph, %dec_label_pc_10cd0
  %r0.11.reload = load i32, i32* %r0.11.reg2mem
  %17 = add i32 %r0.11.reload, -1, !insn.addr !111
  %18 = inttoptr i32 %17 to i8*, !insn.addr !111
  %19 = load i8, i8* %18, align 1, !insn.addr !111
  %20 = zext i8 %19 to i32, !insn.addr !111
  %21 = load i16*, i16** %0, align 4
  %22 = ptrtoint i16* %21 to i32
  %23 = mul i32 %20, 2, !insn.addr !112
  %24 = add i32 %23, %22, !insn.addr !113
  %25 = inttoptr i32 %24 to i16*, !insn.addr !113
  %26 = load i16, i16* %25, align 2, !insn.addr !113
  %27 = and i16 %26, 8192
  %28 = icmp eq i16 %27, 0, !insn.addr !114
  br i1 %28, label %dec_label_pc_10cd0, label %29, !insn.addr !115

; <label>:29:                                     ; preds = %dec_label_pc_10cb8
  store i8 0, i8* %18, align 1, !insn.addr !115
  br label %dec_label_pc_10cd0, !insn.addr !115

dec_label_pc_10cd0:                               ; preds = %dec_label_pc_10cb8, %29
  %30 = icmp ult i32 %r0.0.reload, %17, !insn.addr !109
  store i32 %17, i32* %r0.11.reg2mem, !insn.addr !110
  br i1 %30, label %dec_label_pc_10cb8, label %dec_label_pc_10cd8, !insn.addr !110

dec_label_pc_10cd8:                               ; preds = %dec_label_pc_10cd0, %dec_label_pc_10ca4
  ret i32 %r0.0.reload, !insn.addr !116

; uselistorder directives
  uselistorder i32 %r0.0.reload, { 5, 4, 2, 3, 1, 0 }
  uselistorder i32* %r0.0.reg2mem, { 1, 0, 2 }
  uselistorder i32* %r0.11.reg2mem, { 1, 0, 2 }
  uselistorder label %dec_label_pc_10cd0, { 1, 0 }
  uselistorder label %dec_label_pc_10cb8, { 1, 0 }
}

define i32 @display(i32 %arg1) local_unnamed_addr {
dec_label_pc_10ce0:
  %r7.0.reg2mem = alloca i32, !insn.addr !117
  %r4.7.reg2mem = alloca i32, !insn.addr !117
  %r4.6.reg2mem = alloca i32, !insn.addr !117
  %.pre-phi.reg2mem = alloca i8*, !insn.addr !117
  %r5.0.reg2mem = alloca i32, !insn.addr !117
  %r6.1.reg2mem = alloca i32, !insn.addr !117
  %r0.1.reg2mem = alloca i32, !insn.addr !117
  %r4.2.reg2mem = alloca i32, !insn.addr !117
  %r0.0.reg2mem = alloca i32, !insn.addr !117
  %r4.0.reg2mem = alloca i32, !insn.addr !117
  %0 = icmp eq i32 %arg1, 0, !insn.addr !118
  store i32 %arg1, i32* %r4.0.reg2mem, !insn.addr !119
  store i32 0, i32* %r0.1.reg2mem, !insn.addr !119
  br i1 %0, label %dec_label_pc_10d44, label %dec_label_pc_10d0c, !insn.addr !119

dec_label_pc_10d0c:                               ; preds = %dec_label_pc_10ce0, %dec_label_pc_10d3c
  %r4.0.reload = load i32, i32* %r4.0.reg2mem
  %1 = inttoptr i32 %r4.0.reload to i8*, !insn.addr !120
  %2 = call i8* @strchr(i8* %1, i32 124), !insn.addr !120
  %3 = ptrtoint i8* %2 to i32, !insn.addr !120
  %4 = icmp eq i8* %2, null, !insn.addr !121
  br i1 %4, label %dec_label_pc_10d4c, label %dec_label_pc_10d20, !insn.addr !122

dec_label_pc_10d20:                               ; preds = %dec_label_pc_10d0c
  store i8 0, i8* %2, align 1, !insn.addr !123
  %5 = load i8, i8* %1, align 1, !insn.addr !124
  %6 = add i32 %3, 1, !insn.addr !125
  %7 = icmp eq i8 %5, 0, !insn.addr !126
  store i32 %3, i32* %r0.0.reg2mem, !insn.addr !127
  store i32 %6, i32* %r4.2.reg2mem, !insn.addr !127
  store i32 %6, i32* %r6.1.reg2mem, !insn.addr !127
  br i1 %7, label %dec_label_pc_10d3c, label %dec_label_pc_10d58, !insn.addr !127

dec_label_pc_10d3c:                               ; preds = %dec_label_pc_10d20, %dec_label_pc_10e1c
  %r4.2.reload = load i32, i32* %r4.2.reg2mem
  %r0.0.reload = load i32, i32* %r0.0.reg2mem
  %8 = icmp eq i32 %r4.2.reload, 0, !insn.addr !128
  store i32 %r4.2.reload, i32* %r4.0.reg2mem, !insn.addr !129
  store i32 %r0.0.reload, i32* %r0.1.reg2mem, !insn.addr !129
  br i1 %8, label %dec_label_pc_10d44, label %dec_label_pc_10d0c, !insn.addr !129

dec_label_pc_10d44:                               ; preds = %dec_label_pc_10d3c, %dec_label_pc_10d4c, %dec_label_pc_10ce0
  %r0.1.reload = load i32, i32* %r0.1.reg2mem
  ret i32 %r0.1.reload, !insn.addr !130

dec_label_pc_10d4c:                               ; preds = %dec_label_pc_10d0c
  %9 = load i8, i8* %1, align 1, !insn.addr !131
  %10 = icmp eq i8 %9, 0, !insn.addr !132
  store i32 %3, i32* %r0.1.reg2mem, !insn.addr !133
  store i32 %3, i32* %r6.1.reg2mem, !insn.addr !133
  br i1 %10, label %dec_label_pc_10d44, label %dec_label_pc_10d58, !insn.addr !133

dec_label_pc_10d58:                               ; preds = %dec_label_pc_10d20, %dec_label_pc_10d4c
  %r6.1.reload = load i32, i32* %r6.1.reg2mem
  store i32 %r4.0.reload, i32* %r4.7.reg2mem, !insn.addr !134
  store i32 0, i32* %r7.0.reg2mem, !insn.addr !134
  br label %dec_label_pc_10dfc, !insn.addr !134

dec_label_pc_10d60:                               ; preds = %dec_label_pc_10dfc
  store i8 0, i8* %38, align 1, !insn.addr !135
  %11 = load i8, i8* %37, align 1, !insn.addr !136
  %12 = add i32 %39, 1, !insn.addr !137
  %13 = icmp eq i8 %11, 0, !insn.addr !138
  store i32 %12, i32* %r5.0.reg2mem, !insn.addr !139
  store i32 %12, i32* %r4.6.reg2mem, !insn.addr !139
  br i1 %13, label %dec_label_pc_10df0, label %dec_label_pc_10d7c, !insn.addr !139

dec_label_pc_10d7c:                               ; preds = %dec_label_pc_10e10, %dec_label_pc_10d60
  %r5.0.reload = load i32, i32* %r5.0.reg2mem
  %14 = call i8* @strchr(i8* nonnull %37, i32 61), !insn.addr !140
  %15 = icmp eq i8* %14, null, !insn.addr !141
  %16 = icmp eq i32 %r7.0.reload, 0
  br i1 %15, label %dec_label_pc_10e50, label %dec_label_pc_10d90, !insn.addr !142

dec_label_pc_10d90:                               ; preds = %dec_label_pc_10d7c
  %17 = ptrtoint i8* %14 to i32, !insn.addr !140
  %18 = add i32 %17, 1, !insn.addr !143
  store i8 0, i8* %14, align 1, !insn.addr !144
  %19 = icmp eq i32 %18, 0
  br i1 %16, label %dec_label_pc_10da4, label %dec_label_pc_10e30, !insn.addr !145

dec_label_pc_10da4:                               ; preds = %dec_label_pc_10d90
  br i1 %19, label %dec_label_pc_10e58, label %dec_label_pc_10dac, !insn.addr !146

dec_label_pc_10dac:                               ; preds = %dec_label_pc_10da4
  %20 = call i16** @__ctype_b_loc(), !insn.addr !147
  %21 = inttoptr i32 %18 to i8*
  %22 = load i8, i8* %21, align 1, !insn.addr !148
  %23 = zext i8 %22 to i32, !insn.addr !148
  %24 = mul i32 %23, 2, !insn.addr !149
  %25 = load i16*, i16** %20, align 4, !insn.addr !150
  %26 = ptrtoint i16* %25 to i32, !insn.addr !150
  %27 = add i32 %24, %26, !insn.addr !151
  %28 = inttoptr i32 %27 to i16*, !insn.addr !151
  %29 = load i16, i16* %28, align 2, !insn.addr !151
  %30 = and i16 %29, 2048
  %31 = icmp eq i16 %30, 0, !insn.addr !152
  %32 = select i1 %31, i8* bitcast (i8** @global_var_112ac to i8*), i8* %21, !insn.addr !153
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @global_var_1125c, i32 0, i32 0), i8* nonnull %37, i8* %32), !insn.addr !153
  store i8* %21, i8** %.pre-phi.reg2mem, !insn.addr !153
  br label %dec_label_pc_10dd8, !insn.addr !153

dec_label_pc_10dd8:                               ; preds = %dec_label_pc_10e30.dec_label_pc_10dd8_crit_edge, %dec_label_pc_10dac
  %.pre-phi.reload = load i8*, i8** %.pre-phi.reg2mem
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_var_1126c, i32 0, i32 0), i8* nonnull %37, i8* %.pre-phi.reload), !insn.addr !154
  store i32 %r5.0.reload, i32* %r4.6.reg2mem, !insn.addr !155
  br label %dec_label_pc_10df0, !insn.addr !155

dec_label_pc_10df0:                               ; preds = %dec_label_pc_10e38, %dec_label_pc_10dd8, %dec_label_pc_10d60
  %r4.6.reload = load i32, i32* %r4.6.reg2mem
  %35 = icmp eq i32 %r4.6.reload, 0, !insn.addr !156
  %36 = add i32 %r7.0.reload, 1, !insn.addr !157
  store i32 %r4.6.reload, i32* %r4.7.reg2mem, !insn.addr !158
  store i32 %36, i32* %r7.0.reg2mem, !insn.addr !158
  br i1 %35, label %dec_label_pc_10e1c, label %dec_label_pc_10dfc, !insn.addr !158

dec_label_pc_10dfc:                               ; preds = %dec_label_pc_10df0, %dec_label_pc_10d58
  %r7.0.reload = load i32, i32* %r7.0.reg2mem
  %r4.7.reload = load i32, i32* %r4.7.reg2mem
  %37 = inttoptr i32 %r4.7.reload to i8*
  %38 = call i8* @strchr(i8* %37, i32 44), !insn.addr !159
  %39 = ptrtoint i8* %38 to i32, !insn.addr !159
  %40 = icmp eq i8* %38, null, !insn.addr !160
  br i1 %40, label %dec_label_pc_10e10, label %dec_label_pc_10d60, !insn.addr !161

dec_label_pc_10e10:                               ; preds = %dec_label_pc_10dfc
  %41 = load i8, i8* %37, align 1, !insn.addr !162
  %42 = icmp eq i8 %41, 0, !insn.addr !163
  store i32 %39, i32* %r5.0.reg2mem, !insn.addr !164
  br i1 %42, label %dec_label_pc_10e1c, label %dec_label_pc_10d7c, !insn.addr !164

dec_label_pc_10e1c:                               ; preds = %dec_label_pc_10e10, %dec_label_pc_10df0
  %43 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @global_var_1128c, i32 0, i32 0)), !insn.addr !165
  store i32 %43, i32* %r0.0.reg2mem, !insn.addr !166
  store i32 %r6.1.reload, i32* %r4.2.reg2mem, !insn.addr !166
  br label %dec_label_pc_10d3c, !insn.addr !166

dec_label_pc_10e30:                               ; preds = %dec_label_pc_10d90
  br i1 %19, label %dec_label_pc_10e38, label %dec_label_pc_10e30.dec_label_pc_10dd8_crit_edge, !insn.addr !167

dec_label_pc_10e30.dec_label_pc_10dd8_crit_edge:  ; preds = %dec_label_pc_10e30
  %.pre = inttoptr i32 %18 to i8*, !insn.addr !154
  store i8* %.pre, i8** %.pre-phi.reg2mem
  br label %dec_label_pc_10dd8

dec_label_pc_10e38:                               ; preds = %dec_label_pc_10e50, %dec_label_pc_10e30, %dec_label_pc_10e58
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @global_var_1127c, i32 0, i32 0), i32 %r7.0.reload, i8* nonnull %37), !insn.addr !168
  store i32 %r5.0.reload, i32* %r4.6.reg2mem, !insn.addr !169
  br label %dec_label_pc_10df0, !insn.addr !169

dec_label_pc_10e50:                               ; preds = %dec_label_pc_10d7c
  br i1 %16, label %dec_label_pc_10e58, label %dec_label_pc_10e38, !insn.addr !170

dec_label_pc_10e58:                               ; preds = %dec_label_pc_10e50, %dec_label_pc_10da4
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @global_var_1125c, i32 0, i32 0), i8* nonnull %37, i8* bitcast (i8** @global_var_112ac to i8*)), !insn.addr !171
  br label %dec_label_pc_10e38, !insn.addr !172

; uselistorder directives
  uselistorder i8* %38, { 1, 2, 0 }
  uselistorder i8* %37, { 1, 2, 6, 7, 5, 0, 3, 4 }
  uselistorder i32 %r7.0.reload, { 1, 0, 2 }
  uselistorder i1 %16, { 1, 0 }
  uselistorder i8* %14, { 0, 2, 1 }
  uselistorder i32 %r5.0.reload, { 1, 0 }
  uselistorder i32 %r4.2.reload, { 1, 0 }
  uselistorder i8* %1, { 1, 0, 2 }
  uselistorder i32* %r4.0.reg2mem, { 2, 0, 1 }
  uselistorder i32* %r0.0.reg2mem, { 2, 0, 1 }
  uselistorder i32* %r4.2.reg2mem, { 2, 0, 1 }
  uselistorder i32* %r0.1.reg2mem, { 2, 0, 1, 3 }
  uselistorder i32* %r6.1.reg2mem, { 0, 2, 1 }
  uselistorder i32* %r5.0.reg2mem, { 2, 0, 1 }
  uselistorder i8** %.pre-phi.reg2mem, { 2, 0, 1 }
  uselistorder i32* %r4.6.reg2mem, { 3, 0, 2, 1 }
  uselistorder i8* bitcast (i8** @global_var_112ac to i8*), { 1, 0 }
  uselistorder i16** ()* @__ctype_b_loc, { 1, 0, 2 }
  uselistorder i8* null, { 1, 0, 2 }
  uselistorder i8* (i8*, i32)* @strchr, { 1, 2, 0, 3 }
  uselistorder label %dec_label_pc_10e38, { 2, 0, 1 }
  uselistorder label %dec_label_pc_10d58, { 1, 0 }
  uselistorder label %dec_label_pc_10d44, { 1, 0, 2 }
  uselistorder label %dec_label_pc_10d3c, { 1, 0 }
  uselistorder label %dec_label_pc_10d0c, { 1, 0 }
}

define i32 @callapi(i32 %arg1, i32 %arg2, i32 %arg3) local_unnamed_addr {
dec_label_pc_10e6c:
  %0 = alloca i32
  %sl.0.reg2mem = alloca i32, !insn.addr !173
  %r5.2.reg2mem = alloca i32, !insn.addr !173
  %sb.1.reg2mem = alloca i32, !insn.addr !173
  %r8.0.in.reg2mem = alloca i32*, !insn.addr !173
  %r7.1.reg2mem = alloca i32, !insn.addr !173
  %r6.1.reg2mem = alloca i32, !insn.addr !173
  %r5.1.reg2mem = alloca i32, !insn.addr !173
  %r5.0.reg2mem = alloca i32, !insn.addr !173
  %stack_var_-64 = alloca i32, align 4
  %stack_var_-72 = alloca i32, align 4
  %1 = load i32, i32* %0
  %stack_var_-56 = alloca i32, align 4
  %2 = load i32, i32* %0
  %3 = inttoptr i32 %arg2 to i8*, !insn.addr !174
  %4 = call %hostent* @gethostbyname(i8* %3), !insn.addr !174
  %5 = icmp eq %hostent* %4, null, !insn.addr !175
  br i1 %5, label %dec_label_pc_10fc8, label %dec_label_pc_10e90, !insn.addr !176

dec_label_pc_10e90:                               ; preds = %dec_label_pc_10e6c
  %6 = call i32 @socket(i32 2, i32 1, i32 0), !insn.addr !177
  %7 = icmp eq i32 %6, -1, !insn.addr !178
  br i1 %7, label %dec_label_pc_10fe8, label %dec_label_pc_10eac, !insn.addr !179

dec_label_pc_10eac:                               ; preds = %dec_label_pc_10e90
  %8 = call double @__asm_vmov.i32(i32 0), !insn.addr !180
  %9 = call i32 @__asm_rev16(i32 %arg3), !insn.addr !181
  call void @__asm_vst1.8(double %8, i32 %2), !insn.addr !182
  store i32 2, i32* %stack_var_-56, align 4, !insn.addr !183
  call void @__asm_vst1.8(double %8, i32 %1), !insn.addr !184
  %10 = bitcast i32* %stack_var_-56 to %sockaddr*, !insn.addr !185
  %11 = call i32 @connect(i32 %6, %sockaddr* nonnull %10, i32 16), !insn.addr !185
  %12 = icmp slt i32 %11, 0, !insn.addr !186
  br i1 %12, label %dec_label_pc_11014, label %dec_label_pc_10ef4, !insn.addr !187

dec_label_pc_10ef4:                               ; preds = %dec_label_pc_10eac
  store i32 1, i32* %stack_var_-72, align 4, !insn.addr !188
  %13 = call i32 @setsockopt(i32 %6, i32 1, i32 13, i32* nonnull %stack_var_-72, i32 8), !insn.addr !189
  %14 = icmp eq i32 %13, 0, !insn.addr !190
  br i1 %14, label %dec_label_pc_10f2c, label %dec_label_pc_11090, !insn.addr !191

dec_label_pc_10f2c:                               ; preds = %dec_label_pc_10ef4, %dec_label_pc_11090
  store i32 10, i32* %stack_var_-64, align 4, !insn.addr !192
  %15 = call i32 @setsockopt(i32 %6, i32 1, i32 21, i32* nonnull %stack_var_-64, i32 8), !insn.addr !193
  %16 = icmp eq i32 %15, 0, !insn.addr !194
  br i1 %16, label %dec_label_pc_10f5c, label %dec_label_pc_11068, !insn.addr !195

dec_label_pc_10f5c:                               ; preds = %dec_label_pc_10f2c, %dec_label_pc_11068
  %17 = call i32 @setsockopt(i32 %6, i32 1, i32 20, i32* nonnull %stack_var_-64, i32 8), !insn.addr !196
  %18 = icmp eq i32 %17, 0, !insn.addr !197
  br i1 %18, label %dec_label_pc_10f80, label %dec_label_pc_11040, !insn.addr !198

dec_label_pc_10f80:                               ; preds = %dec_label_pc_10f5c, %dec_label_pc_11040
  %19 = inttoptr i32 %arg1 to i8*, !insn.addr !199
  %20 = call i32 @strlen(i8* %19), !insn.addr !199
  %21 = inttoptr i32 %arg1 to i32*, !insn.addr !200
  %22 = call i32 @send(i32 %6, i32* %21, i32 %20, i32 0), !insn.addr !200
  %23 = icmp slt i32 %22, 1, !insn.addr !201
  br i1 %23, label %dec_label_pc_110b8, label %dec_label_pc_10fa4, !insn.addr !201

dec_label_pc_10fa4:                               ; preds = %dec_label_pc_10f80
  %24 = call i32 @strlen(i8* %19), !insn.addr !202
  %25 = icmp eq i32 %24, %22, !insn.addr !203
  store i32 %17, i32* %r5.0.reg2mem, !insn.addr !204
  br i1 %25, label %dec_label_pc_110dc, label %dec_label_pc_10fb4, !insn.addr !204

dec_label_pc_10fb4:                               ; preds = %dec_label_pc_111b4, %dec_label_pc_110b8, %dec_label_pc_10fa4
  %r5.0.reload = load i32, i32* %r5.0.reg2mem
  %26 = call i32 @close(i32 %6), !insn.addr !205
  store i32 %r5.0.reload, i32* %r5.1.reg2mem, !insn.addr !205
  br label %dec_label_pc_10fbc, !insn.addr !205

dec_label_pc_10fbc:                               ; preds = %dec_label_pc_11174, %dec_label_pc_1115c, %dec_label_pc_10fb4
  %r5.1.reload = load i32, i32* %r5.1.reg2mem
  ret i32 %r5.1.reload, !insn.addr !206

dec_label_pc_10fc8:                               ; preds = %dec_label_pc_10e6c
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @global_var_11290, i32 0, i32 0), i8* %3), !insn.addr !207
  ret i32 1, !insn.addr !208

dec_label_pc_10fe8:                               ; preds = %dec_label_pc_10e90
  %28 = call i32* @__errno_location(), !insn.addr !209
  %29 = load i32, i32* %28, align 4, !insn.addr !210
  %30 = call i8* @strerror(i32 %29), !insn.addr !211
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @global_var_112b0, i32 0, i32 0), i8* %30), !insn.addr !212
  ret i32 1, !insn.addr !213

dec_label_pc_11014:                               ; preds = %dec_label_pc_10eac
  %32 = call i32* @__errno_location(), !insn.addr !214
  %33 = load i32, i32* %32, align 4, !insn.addr !215
  %34 = call i8* @strerror(i32 %33), !insn.addr !216
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @global_var_112d4, i32 0, i32 0), i8* %34), !insn.addr !217
  ret i32 1, !insn.addr !218

dec_label_pc_11040:                               ; preds = %dec_label_pc_10f5c
  %36 = call i32* @__errno_location(), !insn.addr !219
  %37 = load i32, i32* %36, align 4, !insn.addr !220
  %38 = call i8* @strerror(i32 %37), !insn.addr !221
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @global_var_11350, i32 0, i32 0), i8* %38), !insn.addr !222
  %40 = call i32 @close(i32 %6), !insn.addr !223
  br label %dec_label_pc_10f80, !insn.addr !224

dec_label_pc_11068:                               ; preds = %dec_label_pc_10f2c
  %41 = call i32* @__errno_location(), !insn.addr !225
  %42 = load i32, i32* %41, align 4, !insn.addr !226
  %43 = call i8* @strerror(i32 %42), !insn.addr !227
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @global_var_11320, i32 0, i32 0), i8* %43), !insn.addr !228
  %45 = call i32 @close(i32 %6), !insn.addr !229
  br label %dec_label_pc_10f5c, !insn.addr !230

dec_label_pc_11090:                               ; preds = %dec_label_pc_10ef4
  %46 = call i32* @__errno_location(), !insn.addr !231
  %47 = load i32, i32* %46, align 4, !insn.addr !232
  %48 = call i8* @strerror(i32 %47), !insn.addr !233
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @global_var_112f0, i32 0, i32 0), i8* %48), !insn.addr !234
  %50 = call i32 @close(i32 %6), !insn.addr !235
  br label %dec_label_pc_10f2c, !insn.addr !236

dec_label_pc_110b8:                               ; preds = %dec_label_pc_10f80
  %51 = call i32* @__errno_location(), !insn.addr !237
  %52 = load i32, i32* %51, align 4, !insn.addr !238
  %53 = call i8* @strerror(i32 %52), !insn.addr !239
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @global_var_11380, i32 0, i32 0), i8* %53), !insn.addr !240
  store i32 1, i32* %r5.0.reg2mem, !insn.addr !241
  br label %dec_label_pc_10fb4, !insn.addr !241

dec_label_pc_110dc:                               ; preds = %dec_label_pc_10fa4
  %55 = call i32* @malloc(i32 65536), !insn.addr !242
  %56 = icmp eq i32* %55, null, !insn.addr !243
  store i32 65535, i32* %r6.1.reg2mem, !insn.addr !244
  store i32 0, i32* %r7.1.reg2mem, !insn.addr !244
  store i32* %55, i32** %r8.0.in.reg2mem, !insn.addr !244
  store i32 3, i32* %sb.1.reg2mem, !insn.addr !244
  br i1 %56, label %dec_label_pc_11174, label %dec_label_pc_110f8, !insn.addr !244

dec_label_pc_110f8:                               ; preds = %dec_label_pc_110dc, %dec_label_pc_11144
  %r8.0.in.reload = load i32*, i32** %r8.0.in.reg2mem
  %r7.1.reload = load i32, i32* %r7.1.reg2mem
  %r8.0 = ptrtoint i32* %r8.0.in.reload to i32
  %57 = add i32 %r7.1.reload, %r8.0, !insn.addr !245
  %58 = inttoptr i32 %57 to i32*, !insn.addr !246
  %59 = call i32 @recv(i32 %6, i32* %58, i32 65535, i32 0), !insn.addr !246
  %60 = icmp slt i32 %59, 0, !insn.addr !247
  br i1 %60, label %dec_label_pc_111c8, label %dec_label_pc_11130, !insn.addr !248

dec_label_pc_11130:                               ; preds = %dec_label_pc_110f8
  %61 = icmp eq i32 %59, 0, !insn.addr !247
  br i1 %61, label %dec_label_pc_111ec, label %dec_label_pc_11134, !insn.addr !249

dec_label_pc_11134:                               ; preds = %dec_label_pc_11130
  %r6.1.reload = load i32, i32* %r6.1.reg2mem
  %62 = add i32 %59, %r7.1.reload, !insn.addr !250
  %63 = icmp eq i32 %r6.1.reload, %62, !insn.addr !251
  br i1 %63, label %dec_label_pc_1113c, label %dec_label_pc_11200, !insn.addr !252

dec_label_pc_1113c:                               ; preds = %dec_label_pc_11134
  %sb.1.reload = load i32, i32* %sb.1.reg2mem
  %64 = icmp eq i32 %sb.1.reload, 1, !insn.addr !253
  br i1 %64, label %dec_label_pc_1118c, label %dec_label_pc_11144, !insn.addr !254

dec_label_pc_11144:                               ; preds = %dec_label_pc_1113c
  %65 = add nuw nsw i32 %r6.1.reload, 65536, !insn.addr !255
  %66 = add nuw nsw i32 %r6.1.reload, 65535, !insn.addr !256
  %67 = add nsw i32 %sb.1.reload, -1, !insn.addr !253
  %68 = call i32* @realloc(i32* nonnull %r8.0.in.reload, i32 %65), !insn.addr !257
  %69 = icmp eq i32* %68, null, !insn.addr !258
  store i32 %66, i32* %r6.1.reg2mem, !insn.addr !259
  store i32 %r6.1.reload, i32* %r7.1.reg2mem, !insn.addr !259
  store i32* %68, i32** %r8.0.in.reg2mem, !insn.addr !259
  store i32 %67, i32* %sb.1.reg2mem, !insn.addr !259
  br i1 %69, label %dec_label_pc_1115c, label %dec_label_pc_110f8, !insn.addr !259

dec_label_pc_1115c:                               ; preds = %dec_label_pc_11144
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @global_var_113b8, i32 0, i32 0), i32 %65), !insn.addr !260
  store i32 1, i32* %r5.1.reg2mem, !insn.addr !261
  br label %dec_label_pc_10fbc, !insn.addr !261

dec_label_pc_11174:                               ; preds = %dec_label_pc_110dc
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @global_var_113a0, i32 0, i32 0), i32 65536), !insn.addr !262
  store i32 1, i32* %r5.1.reg2mem, !insn.addr !263
  br label %dec_label_pc_10fbc, !insn.addr !263

dec_label_pc_1118c:                               ; preds = %dec_label_pc_1113c
  %72 = add i32 %r6.1.reload, %r8.0, !insn.addr !264
  store i32 %17, i32* %r5.2.reg2mem, !insn.addr !264
  store i32 %72, i32* %sl.0.reg2mem, !insn.addr !264
  br label %dec_label_pc_11190, !insn.addr !264

dec_label_pc_11190:                               ; preds = %dec_label_pc_11200, %dec_label_pc_111ec, %dec_label_pc_111c8, %dec_label_pc_1118c
  %sl.0.reload = load i32, i32* %sl.0.reg2mem
  %r5.2.reload = load i32, i32* %r5.2.reg2mem
  %73 = load i32, i32* @global_var_22080, align 4, !insn.addr !265
  %74 = inttoptr i32 %sl.0.reload to i8*, !insn.addr !266
  store i8 0, i8* %74, align 1, !insn.addr !266
  %75 = icmp eq i32 %73, 0, !insn.addr !267
  br i1 %75, label %dec_label_pc_111c0, label %dec_label_pc_111b0, !insn.addr !268

dec_label_pc_111b0:                               ; preds = %dec_label_pc_11190
  %76 = bitcast i32* %r8.0.in.reload to i8*, !insn.addr !269
  %77 = call i32 @puts(i8* %76), !insn.addr !269
  br label %dec_label_pc_111b4, !insn.addr !269

dec_label_pc_111b4:                               ; preds = %dec_label_pc_111c0, %dec_label_pc_111b0
  call void @free(i32* nonnull %r8.0.in.reload), !insn.addr !270
  store i32 %r5.2.reload, i32* %r5.0.reg2mem, !insn.addr !271
  br label %dec_label_pc_10fb4, !insn.addr !271

dec_label_pc_111c0:                               ; preds = %dec_label_pc_11190
  %78 = call i32 @display(i32 %r8.0), !insn.addr !272
  br label %dec_label_pc_111b4, !insn.addr !273

dec_label_pc_111c8:                               ; preds = %dec_label_pc_110f8
  %79 = call i32* @__errno_location(), !insn.addr !274
  %80 = load i32, i32* %79, align 4, !insn.addr !275
  %81 = call i8* @strerror(i32 %80), !insn.addr !276
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @global_var_113d4, i32 0, i32 0), i8* %81), !insn.addr !277
  store i32 1, i32* %r5.2.reg2mem, !insn.addr !278
  store i32 %57, i32* %sl.0.reg2mem, !insn.addr !278
  br label %dec_label_pc_11190, !insn.addr !278

dec_label_pc_111ec:                               ; preds = %dec_label_pc_11130
  %83 = call i32 @puts(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @global_var_113e8, i32 0, i32 0)), !insn.addr !279
  store i32 1, i32* %r5.2.reg2mem, !insn.addr !280
  store i32 %57, i32* %sl.0.reg2mem, !insn.addr !280
  br label %dec_label_pc_11190, !insn.addr !280

dec_label_pc_11200:                               ; preds = %dec_label_pc_11134
  %84 = add i32 %62, %r8.0, !insn.addr !281
  store i32 %17, i32* %r5.2.reg2mem, !insn.addr !282
  store i32 %84, i32* %sl.0.reg2mem, !insn.addr !282
  br label %dec_label_pc_11190, !insn.addr !282

; uselistorder directives
  uselistorder i32 %r6.1.reload, { 4, 0, 2, 1, 3 }
  uselistorder i32 %r8.0, { 2, 0, 1, 3 }
  uselistorder i32* %r8.0.in.reload, { 3, 2, 1, 0 }
  uselistorder double %8, { 1, 0 }
  uselistorder i32 %6, { 3, 0, 1, 2, 4, 5, 6, 7, 8, 9, 10 }
  uselistorder i32* %r5.0.reg2mem, { 2, 3, 0, 1 }
  uselistorder i32* %r5.1.reg2mem, { 2, 1, 0, 3 }
  uselistorder i32* %r6.1.reg2mem, { 2, 0, 1 }
  uselistorder i32* %r7.1.reg2mem, { 2, 0, 1 }
  uselistorder i32** %r8.0.in.reg2mem, { 2, 0, 1 }
  uselistorder i32* %sb.1.reg2mem, { 2, 0, 1 }
  uselistorder i32* %r5.2.reg2mem, { 1, 3, 4, 0, 2 }
  uselistorder i32* %sl.0.reg2mem, { 1, 3, 4, 0, 2 }
  uselistorder i32* %0, { 1, 0 }
  uselistorder i32 (i8*)* @puts, { 1, 0, 2, 3 }
  uselistorder i8 0, { 1, 4, 7, 3, 6, 2, 5, 8, 0, 9, 10, 11, 12, 13, 14 }
  uselistorder i32* @global_var_22080, { 1, 0 }
  uselistorder i32 65535, { 2, 1, 0 }
  uselistorder i32 65536, { 0, 2, 1 }
  uselistorder i8* (i32)* @strerror, { 6, 5, 4, 3, 2, 1, 0, 7 }
  uselistorder i32* ()* @__errno_location, { 6, 0, 1, 2, 3, 4, 5, 7 }
  uselistorder i32 (i8*, ...)* @printf, { 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, 13, 12, 11, 10, 14 }
  uselistorder i32 (i32)* @close, { 3, 2, 1, 0, 4 }
  uselistorder i32 (i8*)* @strlen, { 1, 0, 2 }
  uselistorder i32 (i32, i32, i32, i32*, i32)* @setsockopt, { 2, 1, 0, 3 }
  uselistorder i32 %arg1, { 1, 0 }
  uselistorder label %dec_label_pc_110f8, { 1, 0 }
  uselistorder label %dec_label_pc_10f80, { 1, 0 }
  uselistorder label %dec_label_pc_10f5c, { 1, 0 }
  uselistorder label %dec_label_pc_10f2c, { 1, 0 }
}

define i32 @__libc_csu_init(i32 %arg1, i32 %arg2, i32 %arg3, i32 %arg4) local_unnamed_addr {
dec_label_pc_11208:
  %0 = call i32 @_init(i32 %arg1, i32 %arg2, i32 %arg3, i32 %arg4), !insn.addr !283
  %spec.select = select i1 icmp eq (i32 ashr (i32 sub (i32 139026, i32 ptrtoint (i32* @global_var_21f10 to i32)), i32 2), i32 0), i32 %0, i32 %arg1
  ret i32 %spec.select, !insn.addr !284

; uselistorder directives
  uselistorder i32 0, { 13, 32, 33, 30, 31, 46, 28, 29, 34, 35, 59, 60, 47, 0, 26, 27, 20, 21, 22, 23, 24, 25, 18, 19, 16, 17, 14, 15, 48, 61, 62, 63, 64, 65, 49, 38, 39, 4, 5, 56, 36, 37, 10, 11, 12, 55, 1, 57, 2, 58, 7, 8, 52, 9, 53, 54, 3, 6, 68, 40, 41, 66, 67, 42, 43, 44, 45, 50, 51 }
  uselistorder i32 2, { 4, 5, 7, 1, 2, 3, 8, 0, 9, 10, 11, 12, 6 }
}

define i32 @__libc_csu_fini() local_unnamed_addr {
dec_label_pc_11244:
  %0 = alloca i32
  %1 = load i32, i32* %0
  ret i32 %1, !insn.addr !285

; uselistorder directives
  uselistorder i32 1, { 5, 9, 10, 17, 16, 67, 19, 47, 46, 45, 51, 53, 54, 55, 52, 56, 60, 59, 58, 20, 18, 15, 14, 13, 12, 11, 8, 4, 62, 63, 64, 65, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 66, 32, 31, 3, 33, 2, 49, 44, 35, 34, 7, 6, 1, 0, 61, 48, 50, 42, 41, 68, 69, 40, 43, 39, 38, 37, 36, 57 }
}

define i32 @_fini(i32 %arg1, i32 %arg2, i32 %arg3, i32 %arg4) local_unnamed_addr {
dec_label_pc_11248:
  ret i32 %arg1, !insn.addr !286
}

declare i32 @strcmp(i8*, i8*) local_unnamed_addr

declare i32 @strtol(i8*, i8**, i32) local_unnamed_addr

declare i32 @setsockopt(i32, i32, i32, i32*, i32) local_unnamed_addr

declare i32 @printf(i8*, ...) local_unnamed_addr

declare void @free(i32*) local_unnamed_addr

declare i32* @realloc(i32*, i32) local_unnamed_addr

declare i32* @__rawmemchr(i32*, i32) local_unnamed_addr

declare i32 @puts(i8*) local_unnamed_addr

declare i32* @malloc(i32) local_unnamed_addr

declare i32 @__libc_start_main(i32, i32, i8**, void ()*, void ()*, void ()*) local_unnamed_addr

declare i8* @strerror(i32) local_unnamed_addr

declare void @__gmon_start__() local_unnamed_addr

declare i16** @__ctype_b_loc() local_unnamed_addr

declare i32 @strlen(i8*) local_unnamed_addr

declare i8* @strchr(i8*, i32) local_unnamed_addr

declare i32 @fprintf(%_IO_FILE*, i8*, ...) local_unnamed_addr

declare i32* @__errno_location() local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare %hostent* @gethostbyname(i8*) local_unnamed_addr

declare void @abort() local_unnamed_addr

declare i32 @recv(i32, i32*, i32, i32) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i32 @send(i32, i32*, i32, i32) local_unnamed_addr

declare i32 @connect(i32, %sockaddr*, i32) local_unnamed_addr

declare i32 @__asm_sxth(i32) local_unnamed_addr

declare double @__asm_vmov.i32(i32) local_unnamed_addr

declare i32 @__asm_rev16(i32) local_unnamed_addr

declare void @__asm_vst1.8(double, i32) local_unnamed_addr

declare void @__asm_svclt(i32) local_unnamed_addr

declare double @__asm_vqrshl.s8(double, double) local_unnamed_addr

declare fp128 @__asm_vmvn.i32(i32) local_unnamed_addr

!0 = !{i64 67808}
!1 = !{i64 67812}
!2 = !{i64 67844}
!3 = !{i64 67856}
!4 = !{i64 67868}
!5 = !{i64 67880}
!6 = !{i64 67892}
!7 = !{i64 67904}
!8 = !{i64 67916}
!9 = !{i64 67928}
!10 = !{i64 67940}
!11 = !{i64 67952}
!12 = !{i64 67964}
!13 = !{i64 67976}
!14 = !{i64 67988}
!15 = !{i64 68000}
!16 = !{i64 68012}
!17 = !{i64 68024}
!18 = !{i64 68036}
!19 = !{i64 68048}
!20 = !{i64 68060}
!21 = !{i64 68072}
!22 = !{i64 68084}
!23 = !{i64 68096}
!24 = !{i64 68108}
!25 = !{i64 68120}
!26 = !{i64 68124}
!27 = !{i64 68132}
!28 = !{i64 68136}
!29 = !{i64 68148}
!30 = !{i64 68152}
!31 = !{i64 68156}
!32 = !{i64 68172}
!33 = !{i64 68176}
!34 = !{i64 68180}
!35 = !{i64 68188}
!36 = !{i64 68192}
!37 = !{i64 68196}
!38 = !{i64 68212}
!39 = !{i64 68216}
!40 = !{i64 68228}
!41 = !{i64 68236}
!42 = !{i64 68248}
!43 = !{i64 68252}
!44 = !{i64 68256}
!45 = !{i64 68260}
!46 = !{i64 68272}
!47 = !{i64 68276}
!48 = !{i64 68280}
!49 = !{i64 68284}
!50 = !{i64 68288}
!51 = !{i64 68292}
!52 = !{i64 68304}
!53 = !{i64 68316}
!54 = !{i64 68320}
!55 = !{i64 68324}
!56 = !{i64 68340}
!57 = !{i64 68344}
!58 = !{i64 68348}
!59 = !{i64 68352}
!60 = !{i64 68356}
!61 = !{i64 68360}
!62 = !{i64 68364}
!63 = !{i64 68368}
!64 = !{i64 68372}
!65 = !{i64 68392}
!66 = !{i64 68396}
!67 = !{i64 68432}
!68 = !{i64 68444}
!69 = !{i64 68448}
!70 = !{i64 68452}
!71 = !{i64 68472}
!72 = !{i64 68480}
!73 = !{i64 68488}
!74 = !{i64 68500}
!75 = !{i64 68504}
!76 = !{i64 68508}
!77 = !{i64 68556}
!78 = !{i64 68560}
!79 = !{i64 68566}
!80 = !{i64 68588}
!81 = !{i64 68592}
!82 = !{i64 68596}
!83 = !{i64 68600}
!84 = !{i64 68612}
!85 = !{i64 68644}
!86 = !{i64 68664}
!87 = !{i64 68668}
!88 = !{i64 68676}
!89 = !{i64 68688}
!90 = !{i64 68692}
!91 = !{i64 68696}
!92 = !{i64 68700}
!93 = !{i64 68704}
!94 = !{i64 68706}
!95 = !{i64 68712}
!96 = !{i64 68714}
!97 = !{i64 68716}
!98 = !{i64 68720}
!99 = !{i64 68728}
!100 = !{i64 68736}
!101 = !{i64 68740}
!102 = !{i64 68748}
!103 = !{i64 68752}
!104 = !{i64 68756}
!105 = !{i64 68760}
!106 = !{i64 68764}
!107 = !{i64 68768}
!108 = !{i64 68780}
!109 = !{i64 68816}
!110 = !{i64 68820}
!111 = !{i64 68792}
!112 = !{i64 68800}
!113 = !{i64 68804}
!114 = !{i64 68808}
!115 = !{i64 68812}
!116 = !{i64 68828}
!117 = !{i64 68832}
!118 = !{i64 68836}
!119 = !{i64 68844}
!120 = !{i64 68884}
!121 = !{i64 68888}
!122 = !{i64 68892}
!123 = !{i64 68900}
!124 = !{i64 68904}
!125 = !{i64 68908}
!126 = !{i64 68912}
!127 = !{i64 68920}
!128 = !{i64 68924}
!129 = !{i64 68928}
!130 = !{i64 68936}
!131 = !{i64 68940}
!132 = !{i64 68944}
!133 = !{i64 68948}
!134 = !{i64 68956}
!135 = !{i64 68964}
!136 = !{i64 68968}
!137 = !{i64 68972}
!138 = !{i64 68976}
!139 = !{i64 68984}
!140 = !{i64 68996}
!141 = !{i64 69000}
!142 = !{i64 69004}
!143 = !{i64 69016}
!144 = !{i64 69020}
!145 = !{i64 69024}
!146 = !{i64 69032}
!147 = !{i64 69036}
!148 = !{i64 69040}
!149 = !{i64 69048}
!150 = !{i64 69052}
!151 = !{i64 69060}
!152 = !{i64 69064}
!153 = !{i64 69076}
!154 = !{i64 69096}
!155 = !{i64 69100}
!156 = !{i64 69104}
!157 = !{i64 69108}
!158 = !{i64 69112}
!159 = !{i64 69124}
!160 = !{i64 69128}
!161 = !{i64 69132}
!162 = !{i64 69136}
!163 = !{i64 69140}
!164 = !{i64 69144}
!165 = !{i64 69156}
!166 = !{i64 69164}
!167 = !{i64 69172}
!168 = !{i64 69192}
!169 = !{i64 69196}
!170 = !{i64 69204}
!171 = !{i64 69220}
!172 = !{i64 69224}
!173 = !{i64 69228}
!174 = !{i64 69252}
!175 = !{i64 69256}
!176 = !{i64 69260}
!177 = !{i64 69276}
!178 = !{i64 69280}
!179 = !{i64 69288}
!180 = !{i64 69292}
!181 = !{i64 69312}
!182 = !{i64 69316}
!183 = !{i64 69324}
!184 = !{i64 69328}
!185 = !{i64 69352}
!186 = !{i64 69356}
!187 = !{i64 69360}
!188 = !{i64 69396}
!189 = !{i64 69408}
!190 = !{i64 69412}
!191 = !{i64 69416}
!192 = !{i64 69452}
!193 = !{i64 69456}
!194 = !{i64 69460}
!195 = !{i64 69464}
!196 = !{i64 69492}
!197 = !{i64 69496}
!198 = !{i64 69500}
!199 = !{i64 69508}
!200 = !{i64 69528}
!201 = !{i64 69536}
!202 = !{i64 69544}
!203 = !{i64 69548}
!204 = !{i64 69552}
!205 = !{i64 69560}
!206 = !{i64 69572}
!207 = !{i64 69592}
!208 = !{i64 69604}
!209 = !{i64 69608}
!210 = !{i64 69616}
!211 = !{i64 69620}
!212 = !{i64 69636}
!213 = !{i64 69648}
!214 = !{i64 69652}
!215 = !{i64 69660}
!216 = !{i64 69664}
!217 = !{i64 69680}
!218 = !{i64 69692}
!219 = !{i64 69696}
!220 = !{i64 69700}
!221 = !{i64 69704}
!222 = !{i64 69720}
!223 = !{i64 69728}
!224 = !{i64 69732}
!225 = !{i64 69736}
!226 = !{i64 69740}
!227 = !{i64 69744}
!228 = !{i64 69760}
!229 = !{i64 69768}
!230 = !{i64 69772}
!231 = !{i64 69776}
!232 = !{i64 69780}
!233 = !{i64 69784}
!234 = !{i64 69800}
!235 = !{i64 69808}
!236 = !{i64 69812}
!237 = !{i64 69816}
!238 = !{i64 69824}
!239 = !{i64 69828}
!240 = !{i64 69844}
!241 = !{i64 69848}
!242 = !{i64 69856}
!243 = !{i64 69860}
!244 = !{i64 69876}
!245 = !{i64 69880}
!246 = !{i64 69904}
!247 = !{i64 69920}
!248 = !{i64 69932}
!249 = !{i64 69936}
!250 = !{i64 69928}
!251 = !{i64 69940}
!252 = !{i64 69944}
!253 = !{i64 69948}
!254 = !{i64 69952}
!255 = !{i64 69900}
!256 = !{i64 69916}
!257 = !{i64 69960}
!258 = !{i64 69972}
!259 = !{i64 69976}
!260 = !{i64 69996}
!261 = !{i64 70000}
!262 = !{i64 70020}
!263 = !{i64 70024}
!264 = !{i64 70028}
!265 = !{i64 70048}
!266 = !{i64 70052}
!267 = !{i64 70056}
!268 = !{i64 70060}
!269 = !{i64 70064}
!270 = !{i64 70072}
!271 = !{i64 70076}
!272 = !{i64 70080}
!273 = !{i64 70084}
!274 = !{i64 70088}
!275 = !{i64 70096}
!276 = !{i64 70100}
!277 = !{i64 70116}
!278 = !{i64 70120}
!279 = !{i64 70132}
!280 = !{i64 70140}
!281 = !{i64 70144}
!282 = !{i64 70148}
!283 = !{i64 70168}
!284 = !{i64 70200}
!285 = !{i64 70212}
!286 = !{i64 70220}
