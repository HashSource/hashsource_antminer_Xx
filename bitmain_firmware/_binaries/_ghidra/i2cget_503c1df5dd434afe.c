// Decompiled: i2cget_503c1df5dd434afe


void _DT_INIT(void)

{
  FUN_000113f0();
  return;
}




void FUN_00010c00(int param_1,undefined4 *param_2)

{
  char cVar1;
  bool bVar2;
  FILE *pFVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int *piVar7;
  char *pcVar8;
  undefined4 *extraout_r1;
  undefined *puVar9;
  int iVar10;
  int extraout_r3;
  bool bVar11;
  undefined4 uVar12;
  undefined4 uVar13;
  uint uVar14;
  undefined4 *extraout_r12;
  undefined4 *puVar15;
  bool bVar16;
  int local_50;
  char *local_44;
  uint local_40;
  undefined1 auStack_3c [24];
  
  uVar13 = 0;
  bVar16 = false;
  bVar2 = false;
  uVar12 = 0;
  iVar10 = 1;
  iVar6 = 0;
  puVar15 = param_2;
  if (param_1 < 2) goto LAB_00010cf8;
  do {
    iVar4 = iVar10;
    puVar15 = puVar15 + 1;
    iVar10 = iVar4;
    if (*(char *)*puVar15 != '-') goto LAB_00010cf8;
    switch(((char *)*puVar15)[1]) {
    case 'V':
      bVar16 = true;
      break;
    default:
      fprintf(stderr,"Error: Unsupported option \"%s\"!\n");
      FUN_00011480();
LAB_00010de0:
      fwrite("Error: Data address invalid!\n",1,0x1d,stderr);
LAB_00010e00:
      FUN_00011480();
LAB_00010e04:
      fprintf(stderr,"i2cget version %s\n",&DAT_000121c8);
                    /* WARNING: Subroutine does not return */
      exit(0);
    case 'a':
      goto switchD_00010c4c_caseD_61;
    case 'f':
      uVar12 = 1;
      break;
    case 'y':
      bVar2 = true;
    }
    while (iVar10 = iVar4 + 1, iVar6 = iVar4, param_1 <= iVar10) {
LAB_00010cf8:
      if (bVar16) goto LAB_00010e04;
      if (((param_1 <= iVar6 + 2) || (iVar4 = FUN_00011d6c(param_2[iVar10]), iVar4 < 0)) ||
         (iVar5 = FUN_0001159c(param_2[iVar10 + 1],uVar13), iVar5 < 0)) goto LAB_00010e00;
      if (iVar6 + 3 < param_1) {
        uVar14 = strtol((char *)param_2[iVar10 + 2],&local_44,0);
        if ((*local_44 != '\0') || (0xff < uVar14)) goto LAB_00010de0;
        local_50 = 2;
      }
      else {
        uVar14 = 0xffffffff;
        local_50 = 1;
      }
      bVar11 = false;
      if (param_1 <= iVar6 + 4) {
LAB_00010e7c:
        iVar10 = FUN_00011654(iVar4,auStack_3c,0x14,0);
        if (iVar10 < 0) goto LAB_00010fac;
        iVar6 = ioctl(iVar10,0x705,&local_40);
        pFVar3 = stderr;
        if (iVar6 < 0) {
          piVar7 = __errno_location();
          pcVar8 = strerror(*piVar7);
          fprintf(pFVar3,"Error: Could not get the adapter functionality matrix: %s\n",pcVar8);
          goto LAB_00010fac;
        }
        if (local_50 == 2) {
          if ((local_40 & 0x80000) == 0) {
            fprintf(stderr,"Error: Adapter does not have %s capability\n","SMBus read byte");
            goto LAB_00010fac;
          }
        }
        else if (local_50 == 3) {
          if ((local_40 & 0x200000) == 0) {
            fprintf(stderr,"Error: Adapter does not have %s capability\n","SMBus read word");
            goto LAB_00010fac;
          }
        }
        else {
          if ((local_40 & 0x20000) == 0) {
            fprintf(stderr,"Error: Adapter does not have %s capability\n","SMBus receive byte");
            goto LAB_00010fac;
          }
          if ((uVar14 != 0xffffffff) && ((local_40 & 0x40000) == 0)) {
            fprintf(stderr,"Error: Adapter does not have %s capability\n","SMBus send byte");
            goto LAB_00010fac;
          }
        }
        if ((bVar11 != false) && ((local_40 & 9) == 0)) {
          fwrite("Warning: Adapter does not seem to support PEC\n",1,0x2e,stderr);
        }
        iVar6 = FUN_00011ec0(iVar10,iVar5,uVar12);
        if (iVar6 != 0) goto LAB_00010fac;
        if (bVar2) {
LAB_00010f1c:
          if ((bVar11 != false) && (iVar6 = ioctl(iVar10,0x708,1), pFVar3 = stderr, iVar6 < 0)) {
            piVar7 = __errno_location();
            pcVar8 = strerror(*piVar7);
            fprintf(pFVar3,"Error: Could not set PEC: %s\n",pcVar8);
            close(iVar10);
LAB_00010fac:
                    /* WARNING: Subroutine does not return */
            exit(1);
          }
          if (local_50 == 1) {
            if ((uVar14 != 0xffffffff) && (iVar6 = i2c_smbus_write_byte(iVar10,uVar14 & 0xff), iVar6 < 0)) {
              fwrite("Warning - write failed\n",1,0x17,stderr);
            }
            goto LAB_000111b8;
          }
          if (local_50 != 3) {
            iVar6 = i2c_smbus_read_byte_data(iVar10,uVar14 & 0xff);
            goto LAB_00011170;
          }
          iVar6 = i2c_smbus_read_word_data(iVar10,uVar14 & 0xff);
          close(iVar10);
        }
        else {
          fwrite("WARNING! This program can confuse your I2C bus, cause data loss and worse!\n",1,0x4b,stderr);
          if (7 < iVar5 - 0x50U) {
            bVar16 = uVar14 == 0;
            if (-1 < (int)uVar14) {
              bVar16 = local_50 == 1;
            }
            if (!bVar16) goto LAB_00011040;
            if (bVar11 != false) {
              fwrite("WARNING! All I2C chips and some SMBus chips will interpret a write\nbyte command with PEC as awrite byte data command, effectively writing a\nvalue into a register!\n"
                     ,1,0xa3,stderr);
            }
LAB_000111e0:
            fprintf(stderr,"I will read from device file %s, chip address 0x%02x, ",auStack_3c,iVar5);
            fprintf(stderr,"data address\n0x%02x",uVar14);
            bVar16 = bVar11;
LAB_000110a4:
            fprintf(stderr,", using %s.\n");
            if (bVar11 != false) {
LAB_0001128c:
              fwrite("PEC checking enabled.\n",1,0x16,stderr);
            }
            puVar9 = &DAT_000121a0;
            if (bVar16 != false) {
              puVar9 = &DAT_0001219c;
            }
            fprintf(stderr,"Continue? [%s] ",puVar9);
            fflush(stderr);
            iVar6 = FUN_00011f34(bVar16 ^ 1);
            if (iVar6 == 0) {
LAB_000110f8:
              fwrite("Aborting on user request.\n",1,0x1a,stderr);
              goto LAB_00010f6c;
            }
            goto LAB_00010f1c;
          }
          if (bVar11 != false) {
            fwrite("STOP! EEPROMs are I2C devices, not SMBus devices. Using PEC\non I2C devices may result in unexpected results, such as\ntrashing the contents of EEPROMs. We can\'t let you do that, sorry.\n"
                   ,1,0xb8,stderr);
            goto LAB_00010f6c;
          }
          bVar16 = uVar14 == 0;
          if (-1 < (int)uVar14) {
            bVar16 = local_50 == 1;
          }
          if (bVar16) goto LAB_000111e0;
LAB_00011040:
          fprintf(stderr,"I will read from device file %s, chip address 0x%02x, ",auStack_3c,iVar5);
          bVar16 = false;
          if (uVar14 != 0xffffffff) {
            fprintf(stderr,"data address\n0x%02x",uVar14);
            goto LAB_000110a4;
          }
          fwrite("current data\naddress",1,0x14,stderr);
          if (local_50 != 1) goto LAB_000110a4;
          fprintf(stderr,", using %s.\n","read byte");
          if (bVar11 != false) goto LAB_0001128c;
          fprintf(stderr,"Continue? [%s] ",&DAT_000121a0);
          fflush(stderr);
          iVar6 = FUN_00011f34(1);
          if (iVar6 == 0) goto LAB_000110f8;
LAB_000111b8:
          iVar6 = i2c_smbus_read_byte(iVar10);
LAB_00011170:
          close(iVar10);
        }
        if (iVar6 < 0) {
          fwrite("Error: Read failed\n",1,0x13,stderr);
                    /* WARNING: Subroutine does not return */
          exit(2);
        }
        printf("0x%0*x\n");
LAB_00010f6c:
                    /* WARNING: Subroutine does not return */
        exit(0);
      }
      cVar1 = *(char *)param_2[iVar10 + 3];
      if (cVar1 == 'c') {
        local_50 = 1;
LAB_00010e6c:
        bVar11 = ((char *)param_2[iVar10 + 3])[1] == 'p';
        goto LAB_00010e7c;
      }
      if (cVar1 == 'w') {
        local_50 = 3;
        goto LAB_00010e6c;
      }
      if (cVar1 == 'b') {
        local_50 = 2;
        goto LAB_00010e6c;
      }
      fwrite("Error: Invalid mode!\n",1,0x15,stderr);
      FUN_00011480();
      param_2 = extraout_r1;
      iVar4 = extraout_r3;
      puVar15 = extraout_r12;
switchD_00010c4c_caseD_61:
      uVar13 = 1;
    }
  } while( true );
}




void entry(undefined4 param_1)

{
  undefined4 in_stack_00000000;
  
  __libc_start_main(FUN_00010c00,in_stack_00000000,&stack0x00000004,0x11fd5,&DAT_00012011,param_1);
                    /* WARNING: Subroutine does not return */
  abort();
}




/* WARNING: Removing unreachable block (ram,0x00011404) */

void FUN_000113f0(void)

{
  __gmon_start__();
  return;
}




/* WARNING: Removing unreachable block (ram,0x00011428) */
/* WARNING: Removing unreachable block (ram,0x00011432) */

void FUN_00011414(void)

{
  return;
}




/* WARNING: Removing unreachable block (ram,0x00011454) */
/* WARNING: Removing unreachable block (ram,0x0001145e) */

void FUN_00011438(void)

{
  return;
}




void _FINI_0(void)

{
  if (DAT_000230cc == '\0') {
    FUN_00011414();
    DAT_000230cc = '\x01';
  }
  return;
}




void FUN_00011480(void)

{
  fwrite("Usage: i2cget [-f] [-y] [-a] I2CBUS CHIP-ADDRESS [DATA-ADDRESS [MODE]]\n  I2CBUS is an integer or an I2C bus name\n  ADDRESS is an integer (0x03 - 0x77, or 0x00 - 0x7f if -a is given)\n  MODE is one of:\n    b (read byte data, default)\n    w (read word data)\n    c (write byte/read byte)\n    Append p for SMBus PEC\n"
         ,1,0x137,stderr);
                    /* WARNING: Subroutine does not return */
  exit(1);
}




int FUN_000114ac(char *param_1)

{
  size_t sVar1;
  int iVar2;
  int iVar3;
  char *pcVar4;
  
  sVar1 = strlen(param_1);
  iVar2 = sVar1 - 1;
  if (sVar1 != 0) {
    pcVar4 = param_1 + iVar2;
    if (param_1[iVar2] != '\n' && param_1[iVar2] != ' ') {
      return sVar1 + 1;
    }
    param_1 = param_1 + sVar1;
    while( true ) {
      iVar3 = iVar2;
      iVar2 = iVar3 + -1;
      param_1 = param_1 + -1;
      *param_1 = '\0';
      if (iVar2 == -1) break;
      pcVar4 = pcVar4 + -1;
      if (*pcVar4 != '\n' && *pcVar4 != ' ') {
        return iVar3 + 1;
      }
    }
  }
  return 1;
}




void FUN_0001151c(void *param_1)

{
  void *pvVar1;
  void *__ptr;
  
  __ptr = *(void **)((int)param_1 + 4);
  pvVar1 = param_1;
  while (__ptr != (void *)0x0) {
    free(__ptr);
    __ptr = *(void **)((int)pvVar1 + 0x14);
    pvVar1 = (void *)((int)pvVar1 + 0x10);
  }
  free(param_1);
  return;
}




void * FUN_00011554(void *param_1,int param_2)

{
  size_t __size;
  void *pvVar1;
  
  __size = (param_2 + 8) * 0x10;
  pvVar1 = realloc(param_1,__size);
  if (pvVar1 == (void *)0x0) {
    FUN_0001151c(param_1);
  }
  else {
    memset((void *)((int)pvVar1 + (__size - 0x80)),0,0x80);
  }
  return pvVar1;
}




long FUN_0001159c(char *param_1,int param_2)

{
  long lVar1;
  int iVar2;
  int iVar3;
  char *local_14 [2];
  
  lVar1 = strtol(param_1,local_14,0);
  if ((*local_14[0] == '\0') && (*param_1 != '\0')) {
    if (param_2 == 0) {
      iVar2 = 3;
      iVar3 = 0x77;
    }
    else {
      iVar2 = 0;
      iVar3 = 0x7f;
    }
    if (lVar1 < iVar2 || iVar3 < lVar1) {
      fprintf(stderr,"Error: Chip address out of range (0x%02lx-0x%02lx)!\n");
      lVar1 = -2;
    }
  }
  else {
    fwrite("Error: Chip address is not a number!\n",1,0x25,stderr);
    lVar1 = -1;
  }
  return lVar1;
}




uint FUN_00011654(undefined4 param_1,char *param_2,size_t param_3,int param_4)

{
  FILE *__stream;
  uint uVar1;
  int *piVar2;
  char *pcVar3;
  
  snprintf(param_2,param_3,"/dev/i2c/%d",param_1);
  param_2[param_3 - 1] = '\0';
  uVar1 = open64(param_2,2);
  if ((int)uVar1 < 0) {
    piVar2 = __errno_location();
    if (*piVar2 == 0x14 || *piVar2 == 2) {
      sprintf(param_2,"/dev/i2c-%d",param_1);
      uVar1 = open64(param_2,2);
    }
    __stream = stderr;
    if (((uint)(param_4 == 0) & uVar1 >> 0x1f) != 0) {
      if (*piVar2 == 2) {
        pcVar3 = strerror(2);
        fprintf(__stream,"Error: Could not open file `/dev/i2c-%d\' or `/dev/i2c/%d\': %s\n",param_1,param_1,pcVar3);
        return uVar1;
      }
      pcVar3 = strerror(*piVar2);
      fprintf(__stream,"Error: Could not open file `%s\': %s\n",param_2,pcVar3);
      if (*piVar2 == 0xd) {
        fwrite("Run as root?\n",1,0xd,stderr);
      }
    }
  }
  return uVar1;
}




void * FUN_00011784(void)

{
  void *pvVar1;
  FILE *pFVar2;
  int iVar3;
  char *pcVar4;
  int iVar5;
  char *pcVar6;
  int iVar7;
  char *__dest;
  char *pcVar8;
  int iVar9;
  size_t sVar10;
  DIR *__dirp;
  dirent64 *pdVar11;
  DIR *__dirp_00;
  uint uVar12;
  undefined *puVar13;
  uint uVar14;
  undefined4 local_3bc;
  uint local_3b8;
  undefined1 auStack_3b4 [20];
  char acStack_3a0 [120];
  char acStack_328 [256];
  char acStack_228 [4];
  char acStack_224 [4];
  char acStack_220 [4];
  char acStack_21c [244];
  undefined4 local_128 [65];
  
  pvVar1 = calloc(8,0x10);
  if (pvVar1 != (void *)0x0) {
    pFVar2 = fopen64("/proc/bus/i2c","r");
    if (pFVar2 == (FILE *)0x0) {
      pFVar2 = fopen64("/proc/mounts","r");
      if (pFVar2 != (FILE *)0x0) {
        do {
          pcVar8 = fgets((char *)local_128,0xff,pFVar2);
          if (pcVar8 == (char *)0x0) {
            fclose(pFVar2);
            return pvVar1;
          }
          __isoc99_sscanf(local_128,"%*[^ ] %[^ ] %[^ ] %*s\n",acStack_228,acStack_328);
          iVar9 = strcasecmp(acStack_328,"sysfs");
        } while (iVar9 != 0);
        fclose(pFVar2);
        sVar10 = strlen(acStack_228);
        builtin_strncpy(acStack_228 + sVar10,"/cla",4);
        builtin_strncpy(acStack_224 + sVar10,"ss/i",4);
        builtin_strncpy(acStack_220 + sVar10,"2c-d",4);
        (acStack_21c + sVar10)[0] = 'e';
        (acStack_21c + sVar10)[1] = 'v';
        acStack_21c[sVar10 + 2] = '\0';
        __dirp = opendir(acStack_228);
        if (__dirp != (DIR *)0x0) {
          uVar14 = 0;
LAB_00011a08:
          pdVar11 = readdir64(__dirp);
          if (pdVar11 != (dirent64 *)0x0) {
            while( true ) {
              if ((pdVar11->d_name[0] == '.') &&
                 ((pdVar11->d_name[1] == '\0' || ((pdVar11->d_name[1] == '.' && (pdVar11->d_name[2] == '\0'))))))
              goto LAB_00011a08;
              pcVar8 = pdVar11->d_name;
              iVar9 = snprintf((char *)local_128,0xff,"%s/%s/name",acStack_228,pcVar8);
              if (0xfe < iVar9) break;
              pFVar2 = fopen64((char *)local_128,"r");
              if (pFVar2 == (FILE *)0x0) {
                iVar9 = snprintf((char *)local_128,0xff,"%s/%s/device/name",acStack_228,pcVar8);
                if (0xfe < iVar9) break;
                pFVar2 = fopen64((char *)local_128,"r");
                if (pFVar2 == (FILE *)0x0) {
                  iVar9 = snprintf((char *)local_128,0xff,"%s/%s/device",acStack_228,pcVar8);
                  if (0xfe < iVar9) break;
                  __dirp_00 = opendir((char *)local_128);
                  if (__dirp_00 == (DIR *)0x0) goto LAB_00011a08;
                  do {
                    while( true ) {
                      do {
                        pdVar11 = readdir64(__dirp_00);
                        if (pdVar11 == (dirent64 *)0x0) goto LAB_00011a08;
                      } while (((pdVar11->d_name[0] == '.') &&
                               ((pdVar11->d_name[1] == '\0' ||
                                ((pdVar11->d_name[1] == '.' && (pdVar11->d_name[2] == '\0')))))) ||
                              (iVar9 = strncmp(pdVar11->d_name,"i2c-",4), iVar9 != 0));
                      iVar9 = snprintf((char *)local_128,0xff,"%s/%s/device/%s/name",acStack_228,pcVar8,pdVar11->d_name)
                      ;
                      if (iVar9 < 0xff) break;
                      fprintf(stderr,"%s: path truncated\n",local_128);
                    }
                    pFVar2 = fopen64((char *)local_128,"r");
                  } while (pFVar2 == (FILE *)0x0);
                }
              }
              pcVar4 = fgets(acStack_3a0,0x78,pFVar2);
              fclose(pFVar2);
              if (pcVar4 == (char *)0x0) {
                fprintf(stderr,"%s: read error\n",local_128);
                goto LAB_00011a08;
              }
              pcVar4 = strchr(acStack_3a0,10);
              if (pcVar4 != (char *)0x0) {
                *pcVar4 = '\0';
              }
              iVar9 = __isoc99_sscanf(pcVar8,"i2c-%d",&local_3bc);
              if (iVar9 == 0) goto LAB_00011a08;
              iVar9 = strncmp(acStack_3a0,"ISA ",4);
              if (iVar9 == 0) {
                iVar9 = 1;
              }
              else {
                iVar3 = FUN_00011654(local_3bc,auStack_3b4,0x14,1);
                if (iVar3 < 0) {
                  iVar9 = 4;
                }
                else {
                  iVar9 = ioctl(iVar3,0x705,&local_3b8);
                  if (iVar9 < 0) {
                    iVar9 = 4;
                  }
                  else if ((local_3b8 & 1) == 0) {
                    if ((local_3b8 & 0x7e0000) == 0) {
                      iVar9 = 0;
                    }
                    else {
                      iVar9 = 3;
                    }
                  }
                  else {
                    iVar9 = 2;
                  }
                  close(iVar3);
                }
              }
              uVar12 = uVar14 + 1;
              if (((uVar12 & 7) == 0) && (pvVar1 = (void *)FUN_00011554(pvVar1,uVar12), pvVar1 == (void *)0x0)) {
                return (void *)0x0;
              }
              *(undefined4 *)((int)pvVar1 + uVar14 * 0x10) = local_3bc;
              iVar3 = __strdup(acStack_3a0);
              *(int *)((int)pvVar1 + uVar14 * 0x10 + 4) = iVar3;
              if (iVar3 == 0) goto LAB_000118fc;
              puVar13 = (&PTR_s_Dummy_bus_000125b0)[iVar9 * 2];
              *(undefined **)((int)pvVar1 + uVar14 * 0x10 + 8) = (&PTR_s_dummy_000125ac)[iVar9 * 2];
              *(undefined **)((int)pvVar1 + uVar14 * 0x10 + 0xc) = puVar13;
              pdVar11 = readdir64(__dirp);
              uVar14 = uVar12;
              if (pdVar11 == (dirent64 *)0x0) goto LAB_00011b58;
            }
            fprintf(stderr,"%s: path truncated\n",local_128);
            goto LAB_00011a08;
          }
LAB_00011b58:
          closedir(__dirp);
        }
      }
    }
    else {
      uVar14 = 0;
      iVar9 = 0;
      while( true ) {
        pcVar8 = fgets(acStack_3a0,0x78,pFVar2);
        uVar14 = uVar14 + 1;
        if (pcVar8 == (char *)0x0) break;
        pcVar8 = strrchr(acStack_3a0,9);
        *pcVar8 = '\0';
        iVar3 = FUN_000114ac(pcVar8 + 1);
        pcVar4 = strrchr(acStack_3a0,9);
        *pcVar4 = '\0';
        iVar5 = FUN_000114ac(pcVar4 + 1);
        pcVar6 = strrchr(acStack_3a0,9);
        *pcVar6 = '\0';
        iVar7 = FUN_000114ac(pcVar6 + 1);
        __isoc99_sscanf(acStack_3a0,"i2c-%d",local_128);
        if (((uVar14 & 7) == 0) && (pvVar1 = (void *)FUN_00011554(pvVar1,uVar14), pvVar1 == (void *)0x0)) {
          return (void *)0x0;
        }
        __dest = (char *)malloc(iVar3 + iVar5 + iVar7);
        if (__dest == (char *)0x0) {
LAB_000118fc:
          FUN_0001151c(pvVar1);
          return (void *)0x0;
        }
        *(undefined4 *)((int)pvVar1 + iVar9) = local_128[0];
        pcVar4 = strcpy(__dest,pcVar4 + 1);
        *(char **)((int)pvVar1 + iVar9 + 4) = pcVar4;
        pcVar4 = strcpy(__dest + iVar5,pcVar6 + 1);
        *(char **)((int)pvVar1 + iVar9 + 8) = pcVar4;
        pcVar8 = strcpy(__dest + iVar5 + iVar7,pcVar8 + 1);
        *(char **)((int)pvVar1 + iVar9 + 0xc) = pcVar8;
        iVar9 = iVar9 + 0x10;
      }
      fclose(pFVar2);
    }
  }
  return pvVar1;
}




ulong FUN_00011d6c(char *param_1)

{
  ulong *puVar1;
  ulong uVar2;
  ulong *puVar3;
  char *__s1;
  int iVar4;
  char *local_1c [2];
  
  uVar2 = strtoul(param_1,local_1c,0);
  if ((*local_1c[0] == '\0') && (*param_1 != '\0')) {
    if (0xfffff < uVar2) {
      uVar2 = 0xfffffffe;
      fwrite("Error: I2C bus out of range!\n",1,0x1d,stderr);
    }
    return uVar2;
  }
  puVar3 = (ulong *)FUN_00011784();
  if (puVar3 == (ulong *)0x0) {
    fwrite("Error: Out of memory!\n",1,0x16,stderr);
    return 0xfffffffd;
  }
  __s1 = (char *)puVar3[1];
  if (__s1 != (char *)0x0) {
    uVar2 = 0xffffffff;
    puVar1 = puVar3;
    do {
      iVar4 = strcmp(__s1,param_1);
      if (iVar4 == 0) {
        if (-1 < (int)uVar2) {
          uVar2 = 0xfffffffc;
          fwrite("Error: I2C bus name is not unique!\n",1,0x23,stderr);
          goto LAB_00011e0c;
        }
        uVar2 = *puVar1;
      }
      __s1 = (char *)puVar1[5];
      puVar1 = puVar1 + 4;
    } while (__s1 != (char *)0x0);
    if (uVar2 != 0xffffffff) goto LAB_00011e0c;
  }
  uVar2 = 0xffffffff;
  fwrite("Error: I2C bus name doesn\'t match any bus present!\n",1,0x33,stderr);
LAB_00011e0c:
  FUN_0001151c(puVar3);
  return uVar2;
}




int FUN_00011ec0(int param_1,undefined4 param_2,int param_3)

{
  FILE *__stream;
  int iVar1;
  int *piVar2;
  char *pcVar3;
  ulong __request;
  
  __request = 0x706;
  if (param_3 == 0) {
    __request = 0x703;
  }
  iVar1 = ioctl(param_1,__request,param_2);
  __stream = stderr;
  if (-1 < iVar1) {
    return 0;
  }
  piVar2 = __errno_location();
  pcVar3 = strerror(*piVar2);
  fprintf(__stream,"Error: Could not set address to 0x%02x: %s\n",param_2,pcVar3);
  return -*piVar2;
}




undefined4 FUN_00011f34(undefined4 param_1)

{
  char *pcVar1;
  uint uVar2;
  byte local_14 [8];
  
  pcVar1 = fgets((char *)local_14,2,stdin);
  if (pcVar1 == (char *)0x0) {
    return 0;
  }
  if (local_14[0] == 0x59) {
LAB_00011fcc:
    param_1 = 1;
  }
  else {
    if (local_14[0] < 0x5a) {
      if (local_14[0] != 0x4e) goto LAB_00011f80;
    }
    else if (local_14[0] != 0x6e) {
      if (local_14[0] != 0x79) goto LAB_00011f80;
      goto LAB_00011fcc;
    }
    param_1 = 0;
  }
LAB_00011f80:
  if (local_14[0] != 10) {
    do {
      uVar2 = fgetc(stdin);
      if (uVar2 == 0xffffffff) {
        return 0;
      }
      local_14[0] = (byte)uVar2;
    } while ((uVar2 & 0xff) != 10);
  }
  return param_1;
}




void FUN_00011fd4(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  undefined **ppuVar2;
  
  _DT_INIT();
  iVar1 = 0;
  ppuVar2 = &__DT_INIT_ARRAY;
  do {
    iVar1 = iVar1 + 1;
    (*(code *)*ppuVar2)(param_1,param_2,param_3,*ppuVar2,param_4);
    ppuVar2 = ppuVar2 + 1;
  } while (iVar1 != 1);
  return;
}




void _DT_FINI(void)

{
  return;
}



