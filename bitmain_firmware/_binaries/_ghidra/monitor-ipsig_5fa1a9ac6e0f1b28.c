// Decompiled: monitor-ipsig_5fa1a9ac6e0f1b28

void _DT_INIT(void)

{
    FUN_000089c0();
    return;
}

void processEntry entry(undefined4 param_1, undefined4 param_2)

{
    __libc_start_main(FUN_00009c40, param_2, &stack0x00000004, FUN_00009cd4,
                      &DAT_00009d38, param_1);
    /* WARNING: Subroutine does not return */
    abort();
}

/* WARNING: Removing unreachable block (ram,0x000089d4) */

void FUN_000089c0(void)

{
    __gmon_start__();
    return;
}

/* WARNING: Removing unreachable block (ram,0x000089fc) */
/* WARNING: Removing unreachable block (ram,0x00008a04) */
/* WARNING: Removing unreachable block (ram,0x00008a08) */

void FUN_000089e4(void)

{
    return;
}

void _FINI_0(void)

{
    if (DAT_00012298 != '\0') {
        return;
    }
    FUN_000089e4();
    DAT_00012298 = 1;
    return;
}

/* WARNING: Removing unreachable block (ram,0x00008a3c) */
/* WARNING: Removing unreachable block (ram,0x00008a44) */
/* WARNING: Removing unreachable block (ram,0x00008aa4) */
/* WARNING: Removing unreachable block (ram,0x00008a48) */

void _INIT_0(void)

{
    return;
}

char *FUN_00008ab8(char *param_1)

{
    timeval tStack_1c;
    char acStack_14[7];
    byte local_d;
    size_t local_c;

    gettimeofday(&tStack_1c, (__timezone_ptr_t)0x0);
    sprintf(acStack_14, "%ld", tStack_1c.tv_usec);
    memset(param_1, 0, 10);
    local_c = strlen(acStack_14);
    local_d = 6 - (char)local_c;
    if (local_d != 0) {
        memset(param_1, 0x30, (uint)local_d);
    }
    strcat(param_1, acStack_14);
    return param_1;
}

undefined4 FUN_00008b68(char *param_1, char *param_2)

{
    int iVar1;
    char *__src;
    undefined4 uVar2;
    char acStack_3c[15];
    undefined1 local_2d;
    undefined4 local_2c;
    in_addr iStack_28;
    undefined4 uStack_24;
    undefined4 uStack_20;
    undefined4 local_1c;
    in_addr_t local_18;
    undefined4 uStack_14;
    undefined4 uStack_10;
    int local_c;

    local_c = socket(2, 2, 0);
    if (local_c == -1) {
        perror("socket");
        uVar2 = 0xffffffff;
    } else {
        strncpy(acStack_3c, param_1, 0x14);
        local_2d = 0x30;
        iVar1 = ioctl(local_c, 0x8915, acStack_3c);
        if (iVar1 < 0) {
            printf(":No Such Device %s/n", param_1);
            uVar2 = 0xffffffff;
        } else {
            local_1c = local_2c;
            local_18 = iStack_28.s_addr;
            uStack_14 = uStack_24;
            uStack_10 = uStack_20;
            __src = inet_ntoa(iStack_28);
            strcpy(param_2, __src);
            close(local_c);
            uVar2 = 1;
        }
    }
    return uVar2;
}

char *FUN_00008c44(char *param_1, char *param_2)

{
    int iVar1;
    size_t sVar2;
    char acStack_30[18];
    byte local_1e;
    byte local_1d;
    byte local_1c;
    byte local_1b;
    byte local_1a;
    byte local_19;
    int local_10;
    char *local_c;

    local_c = (char *)calloc(0x28, 1);
    local_10 = socket(2, 1, 0);
    if (local_10 < 0) {
        perror("socket");
        /* WARNING: Subroutine does not return */
        exit(0);
    }
    strcpy(acStack_30, param_2);
    iVar1 = ioctl(local_10, 0x8927, acStack_30);
    if (iVar1 < 0) {
        perror("ioctl");
        /* WARNING: Subroutine does not return */
        exit(0);
    }
    close(local_10);
    sprintf(local_c, "%02X:%02X:%02X:%02X:%02X:%02X", (uint)local_1e,
            (uint)local_1d, (uint)local_1c, (uint)local_1b, (uint)local_1a,
            (uint)local_19);
    builtin_strncpy(param_1, "MAC=", 5);
    strcat(param_1, local_c);
    sVar2 = strlen(param_1);
    (param_1 + sVar2)[0] = ',';
    (param_1 + sVar2)[1] = '\0';
    free(local_c);
    return param_1;
}

char *FUN_00008d98(char *param_1, char *param_2)

{
    int iVar1;
    char acStack_30[18];
    byte local_1e;
    byte local_1d;
    byte local_1c;
    byte local_1b;
    byte local_1a;
    byte local_19;
    int local_10;
    char *local_c;

    local_c = (char *)calloc(0x28, 1);
    local_10 = socket(2, 1, 0);
    if (local_10 < 0) {
        perror("socket");
        /* WARNING: Subroutine does not return */
        exit(0);
    }
    strcpy(acStack_30, param_2);
    iVar1 = ioctl(local_10, 0x8927, acStack_30);
    if (iVar1 < 0) {
        perror("ioctl");
        /* WARNING: Subroutine does not return */
        exit(0);
    }
    close(local_10);
    sprintf(local_c, "%02X:%02X:%02X:%02X:%02X:%02X", (uint)local_1e,
            (uint)local_1d, (uint)local_1c, (uint)local_1b, (uint)local_1a,
            (uint)local_19);
    strcpy(param_1, local_c);
    free(local_c);
    return param_1;
}

void FUN_00008eac(void)

{
    system("echo 0 >/sys/class/gpio/gpio23/value");
    system("echo 0 >/sys/class/gpio/gpio45/value");
    return;
}

void FUN_00008ed0(void)

{
    system("echo 1 >/sys/class/gpio/gpio23/value");
    system("echo 1 >/sys/class/gpio/gpio45/value");
    return;
}

undefined4 FUN_00008ef4(void)

{
    int iVar1;
    size_t sVar2;
    undefined4 uVar3;
    int local_14;
    FILE *local_10;
    FILE *local_c;

    local_c = (FILE *)0x0;
    iVar1 = FUN_00009134("/sys/class/gpio/gpio46");
    if (iVar1 == 0) {
        local_10 = (FILE *)0x0;
        local_10 = fopen("/sys/class/gpio/export", "w");
        if (local_10 == (FILE *)0x0) {
            puts("Open read gpio/export");
            return 0xffffffff;
        }
        sVar2 = fwrite(&DAT_00009e8c, 2, 1, local_10);
        if (sVar2 != 1) {
            puts("File Write Error!");
        }
        fclose(local_10);
    }
    local_c = fopen("/sys/class/gpio/gpio46/value", "r");
    if (local_c == (FILE *)0x0) {
        puts("Open read recovery button failure");
        uVar3 = 0xffffffff;
    } else {
        __isoc99_fscanf(local_c, &DAT_00009eec, &local_14);
        fclose(local_c);
        if (local_14 == 0) {
            uVar3 = 0;
        } else {
            uVar3 = 1;
        }
    }
    return uVar3;
}

undefined4 FUN_00009014(void)

{
    int iVar1;
    size_t sVar2;
    undefined4 uVar3;
    int local_14;
    FILE *local_10;
    FILE *local_c;

    local_c = (FILE *)0x0;
    iVar1 = FUN_00009134("/sys/class/gpio/gpio26");
    if (iVar1 == 0) {
        local_10 = (FILE *)0x0;
        local_10 = fopen("/sys/class/gpio/export", "w");
        if (local_10 == (FILE *)0x0) {
            puts("Open read gpio/export");
            return 0xffffffff;
        }
        sVar2 = fwrite(&DAT_00009f08, 2, 1, local_10);
        if (sVar2 != 1) {
            puts("File Write Error!");
        }
        fclose(local_10);
    }
    local_c = fopen("/sys/class/gpio/gpio26/value", "r");
    if (local_c == (FILE *)0x0) {
        puts("Open read recovery button failure");
        uVar3 = 0xffffffff;
    } else {
        __isoc99_fscanf(local_c, &DAT_00009eec, &local_14);
        fclose(local_c);
        if (local_14 == 0) {
            uVar3 = 0;
        } else {
            uVar3 = 1;
        }
    }
    return uVar3;
}

bool FUN_00009134(char *param_1)

{
    int iVar1;

    iVar1 = access(param_1, 0);
    return iVar1 == 0;
}

int FUN_00009170(void)

{
    int iVar1;
    FILE *pFVar2;
    size_t sVar3;
    int local_c;

    iVar1 = FUN_00009134("/sys/class/gpio/gpio20");
    if (iVar1 == 0) {
        pFVar2 = fopen("/sys/class/gpio/export", "w");
        if (pFVar2 == (FILE *)0x0) {
            puts("Open read gpio/export");
            return -1;
        }
        sVar3 = fwrite(&DAT_00009f44, 2, 1, pFVar2);
        if (sVar3 != 1) {
            puts("File Write Error!");
        }
        fclose(pFVar2);
    }
    iVar1 = FUN_00009134("/sys/class/gpio/gpio45");
    if (iVar1 == 0) {
        pFVar2 = fopen("/sys/class/gpio/export", "w");
        if (pFVar2 == (FILE *)0x0) {
            puts("Open read gpio/export");
            return -1;
        }
        sVar3 = fwrite(&DAT_00009f60, 2, 1, pFVar2);
        if (sVar3 != 1) {
            puts("File Write Error!");
        }
        fclose(pFVar2);
    }
    system("echo 0 > /sys/class/gpio/gpio20/value");
    system("echo 1 > /sys/class/gpio/gpio20/value");
    usleep(200000);
    system("echo 0 > /sys/class/gpio/gpio20/value");
    for (local_c = 0; local_c < 3; local_c = local_c + 1) {
        system("echo 1 >/sys/class/gpio/gpio23/value");
        usleep(50000);
        system("echo 0 >/sys/class/gpio/gpio23/value");
        usleep(50000);
    }
    return local_c;
}

int FUN_00009328(void)

{
    int iVar1;
    FILE *pFVar2;
    size_t sVar3;
    int local_c;

    iVar1 = FUN_00009134("/sys/class/gpio/gpio20");
    if (iVar1 == 0) {
        pFVar2 = fopen("/sys/class/gpio/export", "w");
        if (pFVar2 == (FILE *)0x0) {
            puts("Open read gpio/export");
            return -1;
        }
        sVar3 = fwrite(&DAT_00009f44, 2, 1, pFVar2);
        if (sVar3 != 1) {
            puts("File Write Error!");
        }
        fclose(pFVar2);
    }
    iVar1 = FUN_00009134("/sys/class/gpio/gpio23");
    if (iVar1 == 0) {
        pFVar2 = fopen("/sys/class/gpio/export", "w");
        if (pFVar2 == (FILE *)0x0) {
            puts("Open read gpio/export");
            return -1;
        }
        sVar3 = fwrite(&DAT_00009fcc, 2, 1, pFVar2);
        if (sVar3 != 1) {
            puts("File Write Error!");
        }
        fclose(pFVar2);
    }
    for (local_c = 0; local_c < 3; local_c = local_c + 1) {
        system("echo 1 > /sys/class/gpio/gpio20/value");
        system("echo 1 >/sys/class/gpio/gpio45/value");
        usleep(50000);
        system("echo 0 >/sys/class/gpio/gpio45/value");
        system("echo 0 > /sys/class/gpio/gpio20/value");
        usleep(50000);
    }
    return local_c;
}

int FUN_000094c8(void)

{
    int iVar1;
    undefined4 local_10;
    int local_c;

    DAT_00012294 = socket(2, 2, 0);
    if (DAT_00012294 == -1) {
        printf("socket error");
        iVar1 = -1;
    } else {
        local_10 = 1;
        local_c = 0;
        local_c = setsockopt(DAT_00012294, 1, 6, &local_10, 4);
        if (local_c == -1) {
            printf("set socket error...");
            iVar1 = -1;
        } else {
            bzero(&DAT_000122d4, 0x10);
            DAT_000122d4 = 2;
            DAT_000122d8 = htonl(0xffffffff);
            DAT_000122d6 = htons(0x379b);
            bzero(&DAT_000122c4, 0x10);
            DAT_000122c4 = 2;
            DAT_000122c8 = htonl(0);
            DAT_000122c6 = htons(0x379c);
            iVar1 = bind(DAT_00012294, (sockaddr *)&DAT_000122c4, 0x10);
            if (iVar1 == -1) {
                printf("bind error...");
                iVar1 = 0;
            }
        }
    }
    return iVar1;
}

undefined4 FUN_00009670(void)

{
    int iVar1;
    size_t sVar2;
    char acStack_c0[40];
    char acStack_98[32];
    char acStack_78[100];
    ssize_t local_14;

    memset(acStack_98, 0, 0x1e);
    memset(acStack_c0, 0, 0x28);
    memset(acStack_78, 0, 100);
    iVar1 = FUN_00008b68(&DAT_0000a004, acStack_c0);
    if (iVar1 == 0) {
        puts("get IP error");
    }
    FUN_00008d98(acStack_98, &DAT_0000a004);
    sVar2 = strlen(acStack_98);
    strncpy(&DAT_000122a0, acStack_98, sVar2);
    strcpy(acStack_78, acStack_c0);
    sVar2 = strlen(acStack_78);
    (acStack_78 + sVar2)[0] = ',';
    (acStack_78 + sVar2)[1] = '\0';
    strcat(acStack_78, acStack_98);
    iVar1 = DAT_00012294;
    sVar2 = strlen(acStack_78);
    local_14 =
        sendto(iVar1, acStack_78, sVar2, 0, (sockaddr *)&DAT_000122d4, 0x10);
    if (local_14 < 0) {
        printf("send error....");
    } else {
        printf("send ipmac:\n%s\n", acStack_78);
    }
    return 1;
}

undefined4 FUN_000097f4(void *param_1)

{
    ssize_t sVar1;
    undefined4 extraout_r3;
    undefined4 extraout_r3_00;
    undefined4 uVar2;

    sVar1 =
        sendto(DAT_00012294, param_1, 10, 0, (sockaddr *)&DAT_000122d4, 0x10);
    if (sVar1 < 0) {
        printf("send error....");
        uVar2 = extraout_r3;
    } else {
        printf("send ack OK!\n ");
        uVar2 = extraout_r3_00;
    }
    return uVar2;
}

/* WARNING: Type propagation algorithm not settling */

bool FUN_00009870(void)

{
    int iVar1;
    size_t __n;
    bool bVar2;
    socklen_t local_a4;
    timeval local_a0;
    fd_set fStack_98;
    ssize_t local_18;
    char *local_14;
    fd_set *local_10;
    uint local_c;

    local_a0.tv_sec = 2;
    local_a0.tv_usec = 0;
    local_10 = &fStack_98;
    for (local_c = 0; local_c < 0x20; local_c = local_c + 1) {
        fStack_98.fds_bits[local_c] = 0;
    }
    iVar1 = DAT_00012294;
    if (DAT_00012294 < 0) {
        iVar1 = DAT_00012294 + 0x1f;
    }
    fStack_98.fds_bits[iVar1 >> 5] =
        fStack_98.fds_bits[iVar1 >> 5] | 1 << (DAT_00012294 % 0x20 & 0xffU);
    local_14 = (char *)0x0;
    local_14 = (char *)calloc(0x1e, 1);
    iVar1 = select(DAT_00012294 + 1, &fStack_98, (fd_set *)0x0, (fd_set *)0x0,
                   &local_a0);
    if (iVar1 != -1) {
        if (iVar1 == 0) {
            DAT_000122c0 = DAT_000122c0 + 1;
        } else {
            iVar1 = DAT_00012294;
            if (DAT_00012294 < 0) {
                iVar1 = DAT_00012294 + 0x1f;
            }
            if ((fStack_98.fds_bits[iVar1 >> 5] >>
                     (DAT_00012294 % 0x20 & 0xffU) &
                 1U) != 0) {
                local_a4 = 0x10;
                local_18 = recvfrom(DAT_00012294, local_14, 0x1e, 0,
                                    (sockaddr *)&DAT_000122c4, &local_a4);
                if (0 < local_18) {
                    printf("rev:\n%s\t", local_14);
                    DAT_000122c0 = 0;
                    __n = strlen(&DAT_000122a0);
                    iVar1 = strncmp(local_14, &DAT_000122a0, __n);
                    if (iVar1 == 0) {
                        printf("send_ack(\"1\");");
                        FUN_00009170();
                        FUN_000097f4(&DAT_0000a07c);
                        free(local_14);
                        return true;
                    }
                    printf("send_ack(\"0\");");
                    FUN_00009328();
                    FUN_000097f4("FAILD");
                    free(local_14);
                    return false;
                }
                printf("read error....");
                DAT_000122c0 = DAT_000122c0 + 1;
            }
        }
        bVar2 = DAT_000122c0 != 5;
        if (bVar2) {
            free(local_14);
        } else {
            DAT_000122c0 = 0;
            puts("Time Out");
            free(local_14);
        }
        return !bVar2;
    }
    /* WARNING: Subroutine does not return */
    exit(-1);
}

bool FUN_00009bb4(void)

{
    int iVar1;
    int local_10;
    int local_c;

    local_10 = 0;
    for (local_c = 0; local_c < 5; local_c = local_c + 1) {
        iVar1 = FUN_00009014();
        if (iVar1 == 0) {
            usleep(20000);
            local_10 = local_10 + 1;
        }
    }
    if (local_10 == 5) {
        FUN_00008ed0();
    }
    return local_10 == 5;
}

void FUN_00009c40(undefined4 param_1, undefined4 param_2)

{
    int iVar1;

    printf("monitor-ipsig compile %s--%s\n", "Nov 12 2018", "21:07:31", 0,
           param_2, param_1);
    iVar1 = FUN_000094c8();
    do {
        while (iVar1 = FUN_00009bb4(iVar1), iVar1 != 1) {
            iVar1 = usleep(400000);
        }
        do {
            puts("Key Down!!!!!");
            FUN_00009670();
            iVar1 = FUN_00009870();
        } while (iVar1 != 1);
        iVar1 = 1;
    } while (true);
}

/* WARNING: Removing unreachable block (ram,0x00009d00) */

void FUN_00009cd4(undefined4 param_1, undefined4 param_2, undefined4 param_3,
                  undefined4 param_4)

{
    int iVar1;
    undefined4 *puVar2;

    _DT_INIT();
    puVar2 = (undefined4 *)0x120f4;
    iVar1 = 0;
    do {
        iVar1 = iVar1 + 1;
        puVar2 = puVar2 + 1;
        (*(code *)*puVar2)(param_1, param_2, param_3, (code *)*puVar2, param_4);
    } while (iVar1 != 1);
    return;
}

void _DT_FINI(void)

{
    return;
}
