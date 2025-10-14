// Decompiled: monitor-recobtn_f38202784de58aff

void _DT_INIT(void)

{
    FUN_000087d8();
    return;
}

void FUN_000085c4(int param_1, int param_2)

{
    int iVar1;
    __pid_t _Var2;
    timeval local_20;
    timeval local_18;

    printf("monitor-recobtn compile %s--%s\n", "Oct  9 2018", "18:32:45");
    do {
        iVar1 = FUN_00008910(0);
        while (iVar1 == 0) {
            gettimeofday(&local_20, (__timezone_ptr_t)0x0);
            FUN_000088d0();
            puts("Detect recovery button push off");
        LAB_00008608:
            iVar1 = FUN_00008910(0);
            if (iVar1 != 1) {
                while (gettimeofday(&local_18, (__timezone_ptr_t)0x0),
                       3000000 <
                           ((local_18.tv_sec - local_20.tv_sec) * 1000000 +
                            local_18.tv_usec) -
                               local_20.tv_usec) {
                    puts("recovery button off over 3S, wait push on");
                    while (iVar1 = FUN_00008910(0), iVar1 == 0) {
                        system("echo high >/sys/class/gpio/gpio20/direction");
                        FUN_000088d0();
                        sleep(1);
                        FUN_000088f0();
                        sleep(1);
                    }
                    system("echo low >/sys/class/gpio/gpio20/direction");
                    puts("recovery button on");
                    _Var2 = fork();
                    if (_Var2 < 0) {
                        puts("error occured.");
                        goto LAB_00008608;
                    }
                    if (_Var2 == 0) {
                        FUN_000088f0();
                        if (param_1 < 2) {
                            sleep(1);
                        } else {
                            execvp(*(char **)(param_2 + 4),
                                   (char **)(param_2 + 4));
                        }
                        /* WARNING: Subroutine does not return */
                        exit(0);
                    }
                    iVar1 = 100;
                    wait((void *)0x0);
                    puts("child complete");
                    do {
                        FUN_000088d0();
                        usleep(100000);
                        FUN_000088f0();
                        usleep(100000);
                        iVar1 = iVar1 + -1;
                    } while (iVar1 != 0);
                    puts("recovery factory complete");
                    iVar1 = FUN_00008910(0);
                    if (iVar1 == 1)
                        goto LAB_00008708;
                }
                usleep(500000);
                goto LAB_00008608;
            }
        LAB_00008708:
            FUN_000088f0();
            iVar1 = FUN_00008910(0);
        }
        sleep(1);
    } while (true);
}

void processEntry entry(undefined4 param_1, undefined4 param_2)

{
    __libc_start_main(FUN_000085c4, param_2, &stack0x00000004, FUN_00008974,
                      &DAT_000089d8, param_1);
    /* WARNING: Subroutine does not return */
    abort();
}

/* WARNING: Removing unreachable block (ram,0x000087ec) */

void FUN_000087d8(void)

{
    __gmon_start__();
    return;
}

/* WARNING: Removing unreachable block (ram,0x00008814) */
/* WARNING: Removing unreachable block (ram,0x0000881c) */
/* WARNING: Removing unreachable block (ram,0x00008820) */

void FUN_000087fc(void)

{
    return;
}

void _FINI_0(void)

{
    if (DAT_00010d68 != '\0') {
        return;
    }
    FUN_000087fc();
    DAT_00010d68 = 1;
    return;
}

/* WARNING: Removing unreachable block (ram,0x00008854) */
/* WARNING: Removing unreachable block (ram,0x0000885c) */
/* WARNING: Removing unreachable block (ram,0x000088bc) */
/* WARNING: Removing unreachable block (ram,0x00008860) */

void _INIT_0(void)

{
    return;
}

void FUN_000088d0(void)

{
    system("echo low >/sys/class/gpio/gpio23/direction");
    system("echo low >/sys/class/gpio/gpio45/direction");
    return;
}

void FUN_000088f0(void)

{
    system("echo high >/sys/class/gpio/gpio23/direction");
    system("echo high >/sys/class/gpio/gpio45/direction");
    return;
}

int FUN_00008910(void)

{
    FILE *__stream;
    int local_c;

    __stream = fopen("/sys/class/gpio/gpio46/value", "r");
    if (__stream == (FILE *)0x0) {
        puts("Open read recovery button failure");
        local_c = -1;
    } else {
        __isoc99_fscanf(__stream, &DAT_00008ae0, &local_c);
        fclose(__stream);
        if (local_c != 0) {
            local_c = 1;
        }
    }
    return local_c;
}

/* WARNING: Removing unreachable block (ram,0x000089a0) */

void FUN_00008974(undefined4 param_1, undefined4 param_2, undefined4 param_3,
                  undefined4 param_4)

{
    int iVar1;
    undefined4 *puVar2;

    _DT_INIT();
    puVar2 = (undefined4 *)0x10c18;
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
