// Decompiled: FileParser_3157f9a0e4608491


void _DT_INIT(void)

{
  FUN_00010868();
  return;
}




void entry(undefined4 param_1)

{
  undefined4 in_stack_00000000;
  
  __libc_start_main(FUN_000133d0,in_stack_00000000,&stack0x00000004,0x137b5,&DAT_000137f1,param_1);
                    /* WARNING: Subroutine does not return */
  abort();
}




/* WARNING: Removing unreachable block (ram,0x0001087c) */

void FUN_00010868(void)

{
  __gmon_start__();
  return;
}




/* WARNING: Removing unreachable block (ram,0x000108a0) */
/* WARNING: Removing unreachable block (ram,0x000108aa) */

void FUN_0001088c(void)

{
  return;
}




/* WARNING: Removing unreachable block (ram,0x000108cc) */
/* WARNING: Removing unreachable block (ram,0x000108d6) */

void FUN_000108b0(void)

{
  return;
}




void _FINI_0(void)

{
  if (DAT_00025838 == '\0') {
    FUN_0001088c();
    DAT_00025838 = '\x01';
  }
  return;
}




void FUN_000108f8(undefined4 param_1)

{
  puts("Useage:\r");
  printf("\t%s [option] [paramaters]\n\n",param_1);
  puts("\tOption:{-f} {-s} {-p} {-n} {-x} {-q}\n");
  puts("\t\t-f [minerType] [fileName] [rootPublicKeyFile]: \n\t\t\tOnly Check If Filename was Valided.\n");
  puts(
      "\t\t-s [minerType] [fileName] [rootPublicKeyFile]: \n\t\t\tCheck If Filename Was Valided, and Splite Bmu To \"/tmp/tmpfw/\"\n"
      );
  puts(
      "\t\t-p [minerType] [fileName] [rootPublicKeyFile]: \n\t\t\tCheck If Filename Was Valided, and Dump BmuComments\n"
      );
  puts("\t\t-x [minerType] [fileName] [rootPublicKeyFile]: \n\t\t\tCheck If Filename Was FullSize BMU\n");
  puts("\t\t-n [nandBinFile]: \n\t\t\tSplite SigImg To Single File To \"/tmp/tmpNand/\"\n");
  puts("\t\t-q: \n\t\t\tGenerate A 256Bytes 0xff File To \"/tmp/256BFF\"\n");
  puts("\tReturns:");
  puts("\t\t0: \n\t\t\tWell Done!\n");
  puts("\t\tOthers: \n\t\t\tSomething Wrong!\n");
  return;
}




undefined4 FUN_000109a8(char *param_1)

{
  undefined4 uVar1;
  undefined4 local_8014;
  undefined1 auStack_8010 [32764];
  FILE *local_14;
  FILE *local_10;
  int local_c;
  
  local_8014 = 0;
  memset(auStack_8010,0,0x7ffc);
  local_10 = fopen64(param_1,"rb");
  if (local_10 == (FILE *)0x0) {
    puts("Load Nand Image File Failed!");
    uVar1 = 1;
  }
  else {
    for (local_c = 0; local_c < 0xf; local_c = local_c + 1) {
      fread(&local_8014,*(size_t *)(&DAT_0002507c + local_c * 0x84),1,local_10);
      local_14 = fopen64(s__tmp_tmpNand_devicetree_dtb_sig_00025080 + local_c * 0x84,"wb");
      if (local_14 == (FILE *)0x0) {
        printf("Try To Write To File \'%s\' Failed!\n",s__tmp_tmpNand_devicetree_dtb_sig_00025080 + local_c * 0x84);
        if (local_10 != (FILE *)0x0) {
          fclose(local_10);
        }
        return 2;
      }
      fwrite(&local_8014,*(size_t *)(&DAT_0002507c + local_c * 0x84),1,local_14);
      if (local_14 != (FILE *)0x0) {
        fclose(local_14);
      }
      local_14 = (FILE *)0x0;
    }
    if (local_10 != (FILE *)0x0) {
      fclose(local_10);
    }
    uVar1 = 0;
  }
  return uVar1;
}




undefined4 FUN_00010b7c(void)

{
  undefined4 uVar1;
  undefined4 local_110;
  undefined1 auStack_10c [252];
  FILE *local_10;
  int local_c;
  
  local_10 = fopen64("/tmp/256BFF","wb");
  if (local_10 == (FILE *)0x0) {
    puts("GenFile Failed!");
    uVar1 = 1;
  }
  else {
    local_110 = 0;
    memset(auStack_10c,0,0xfc);
    for (local_c = 0; local_c < 0x100; local_c = local_c + 1) {
      auStack_10c[local_c + -4] = 0xff;
    }
    fwrite(&local_110,0x100,1,local_10);
    fclose(local_10);
    uVar1 = 0;
  }
  return uVar1;
}




undefined4 FUN_00010c50(void *param_1,size_t param_2,uchar *param_3,void *param_4)

{
  ulong uVar1;
  char *pcVar2;
  undefined4 uVar3;
  SHA256_CTX SStack_a4;
  uchar auStack_34 [32];
  int local_14;
  RSA *local_10;
  BIO *local_c;
  
  local_c = (BIO *)0x0;
  local_10 = (RSA *)0x0;
  local_c = BIO_new_mem_buf(param_4,0x400);
  local_10 = PEM_read_bio_RSA_PUBKEY(local_c,(RSA **)0x0,(undefined1 *)0x0,(void *)0x0);
  if (local_10 == (RSA *)0x0) {
    uVar1 = ERR_get_error();
    pcVar2 = ERR_error_string(uVar1,(char *)0x0);
    printf("OpenSSL error: %s\n",pcVar2);
    puts("Read Root PubK Failed!");
    uVar3 = 0xc;
  }
  else {
    SHA256_Init(&SStack_a4);
    SHA256_Update(&SStack_a4,param_1,param_2);
    SHA256_Final(auStack_34,&SStack_a4);
    local_14 = RSA_verify(0x2a0,auStack_34,0x20,param_3,0x100,local_10);
    if (local_10 != (RSA *)0x0) {
      RSA_free(local_10);
    }
    if (local_c != (BIO *)0x0) {
      BIO_free(local_c);
    }
    if (local_14 == 1) {
      uVar3 = 0;
    }
    else {
      uVar1 = ERR_get_error();
      pcVar2 = ERR_error_string(uVar1,(char *)0x0);
      printf("OpenSSL error: %s\n",pcVar2);
      puts("Check miner.pem Failed!");
      uVar3 = 0xd;
    }
  }
  return uVar3;
}




undefined4 FUN_00010dc8(FILE *param_1,int param_2,undefined4 *param_3,undefined1 param_4,char param_5,char param_6)

{
  size_t sVar1;
  char local_524 [128];
  undefined4 local_4a4;
  undefined8 local_4a0;
  undefined4 uStack_498;
  undefined4 local_494;
  undefined4 uStack_490;
  undefined8 uStack_48c;
  SHA256_CTX SStack_484;
  undefined4 local_414;
  undefined1 auStack_410 [1020];
  size_t local_14;
  FILE *local_10;
  int local_c;
  
  local_414 = 0;
  memset(auStack_410,0,0x3fc);
  SHA256_Init(&SStack_484);
  local_c = 0;
  local_14 = 0;
  local_10 = (FILE *)0x0;
  if (param_6 != '\0') {
    builtin_strncpy(local_524,"/tmp/tmpfw/",0xc);
    memset(local_524 + 0xc,0,0x74);
    switch(param_4) {
    case 0:
      sVar1 = strlen(local_524);
      builtin_strncpy(local_524 + sVar1,"BOOT.bin",9);
      break;
    case 1:
      sVar1 = strlen(local_524);
      builtin_strncpy(local_524 + sVar1,"devicetree.dtb",0xf);
      break;
    case 2:
      sVar1 = strlen(local_524);
      builtin_strncpy(local_524 + sVar1,"uImage",7);
      break;
    case 3:
      sVar1 = strlen(local_524);
      builtin_strncpy(local_524 + sVar1,"minerfs.image.gz",0x11);
      break;
    case 4:
      sVar1 = strlen(local_524);
      builtin_strncpy(local_524 + sVar1,"update.image.gz",0x10);
      break;
    case 5:
      sVar1 = strlen(local_524);
      builtin_strncpy(local_524 + sVar1,"crl.tar.gz",0xb);
      break;
    case 6:
      sVar1 = strlen(local_524);
      builtin_strncpy(local_524 + sVar1,"miner.btm.tar.gz",0x11);
      break;
    case 7:
      sVar1 = strlen(local_524);
      builtin_strncpy(local_524 + sVar1,"reserve",8);
      break;
    case 9:
      sVar1 = strlen(local_524);
      builtin_strncpy(local_524 + sVar1,"datafile",9);
    }
    if (param_5 != '\0') {
      sVar1 = strlen(local_524);
      builtin_strncpy(local_524 + sVar1,".sig",5);
    }
    printf("fileName:\'%s\', size:[%d]\r\n",local_524,param_2);
    local_10 = fopen64(local_524,"wb");
    if (local_10 == (FILE *)0x0) {
      printf("Create File \'%s\' Failed!\r\n",local_524);
    }
  }
  while (0x400 < (uint)(param_2 - local_c)) {
    local_14 = fread(&local_414,1,0x400,param_1);
    local_c = local_c + local_14;
    SHA256_Update(&SStack_484,&local_414,0x400);
    if ((param_6 != '\0') && (local_10 != (FILE *)0x0)) {
      fwrite(&local_414,1,0x400,local_10);
    }
  }
  local_14 = fread(&local_414,1,param_2 - local_c,param_1);
  SHA256_Update(&SStack_484,&local_414,local_14);
  if ((param_6 != '\0') && (local_10 != (FILE *)0x0)) {
    fwrite(&local_414,1,local_14,local_10);
  }
  local_4a4 = 0;
  local_4a0 = 0;
  uStack_498 = 0;
  local_494 = 0;
  uStack_490 = 0;
  uStack_48c = 0;
  SHA256_Final((uchar *)&local_4a4,&SStack_484);
  if ((param_6 != '\0') && (local_10 != (FILE *)0x0)) {
    fclose(local_10);
  }
  *param_3 = local_4a4;
  param_3[1] = (undefined4)local_4a0;
  param_3[2] = local_4a0._4_4_;
  param_3[3] = uStack_498;
  param_3[4] = local_494;
  param_3[5] = uStack_490;
  param_3[6] = (undefined4)uStack_48c;
  param_3[7] = uStack_48c._4_4_;
  return uStack_48c._4_4_;
}




undefined4 FUN_00011430(undefined4 *param_1)

{
  return *param_1;
}




undefined8 FUN_00011460(void *param_1)

{
  undefined8 local_10;
  
  memcpy(&local_10,param_1,8);
  return local_10;
}




undefined8 FUN_00011498(uint param_1,uint param_2)

{
  return CONCAT44(param_2,param_1 ^ param_2 >> 0xf);
}




undefined8 FUN_000114e4(uint param_1,uint param_2,uint param_3)

{
  undefined8 uVar1;
  ulonglong in_d17;
  
  uVar1 = VectorShiftLeft(CONCAT44(param_2,param_1),in_d17 & 0xffffffffffff0000 | (ulonglong)(-param_3 & 0x3f),8,1);
  return CONCAT44((uint)((ulonglong)uVar1 >> 0x20) | param_2 >> (param_3 & 0xff),
                  (uint)uVar1 |
                  param_1 >> (param_3 & 0xff) | param_2 << (0x20 - param_3 & 0xff) | param_2 >> (param_3 - 0x20 & 0xff))
  ;
}




undefined8 FUN_00011550(uint param_1,uint param_2,uint param_3,uint param_4,uint param_5,int param_6)

{
  longlong lVar1;
  uint uVar2;
  uint uVar3;
  
  lVar1 = (ulonglong)(param_3 ^ param_1) * (ulonglong)param_5;
  uVar2 = (param_3 ^ param_1) * param_6 + (param_4 ^ param_2) * param_5 + (int)((ulonglong)lVar1 >> 0x20);
  param_3 = uVar2 >> 0xf ^ (uint)lVar1 ^ param_3;
  lVar1 = (ulonglong)param_3 * (ulonglong)param_5;
  uVar2 = param_3 * param_6 + (uVar2 ^ param_4) * param_5 + (int)((ulonglong)lVar1 >> 0x20);
  uVar3 = uVar2 >> 0xf ^ (uint)lVar1;
  lVar1 = (ulonglong)param_5 * (ulonglong)uVar3;
  return CONCAT44(param_5 * uVar2 + uVar3 * param_6 + (int)((ulonglong)lVar1 >> 0x20),(int)lVar1);
}




longlong FUN_00011674(byte *param_1,uint param_2)

{
  longlong lVar1;
  uint uVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  longlong lVar6;
  longlong lVar7;
  longlong lVar8;
  
  if (param_2 < 8) {
    if (param_2 < 4) {
      if (param_2 == 0) {
        lVar6 = -0x651e95c4d06fbfb1;
      }
      else {
        uVar2 = (uint)*param_1 + (uint)param_1[param_2 >> 1] * 0x100;
        param_2 = param_2 + (uint)param_1[param_2 - 1] * 4;
        lVar6 = (ulonglong)uVar2 * 0x2f90404f;
        lVar8 = (ulonglong)param_2 * 0x97cb3127;
        lVar6 = FUN_00011498((uint)lVar8 ^ (uint)lVar6,
                             param_2 * -0x3c5a37a4 + (int)((ulonglong)lVar8 >> 0x20) ^
                             uVar2 * -0x651e95c5 + (int)((ulonglong)lVar6 >> 0x20));
        lVar6 = lVar6 * -0x651e95c4d06fbfb1;
      }
    }
    else {
      uVar2 = FUN_00011430(param_1);
      uVar3 = FUN_00011430(param_1 + (param_2 - 4));
      lVar6 = FUN_00011550(uVar2 * 8 + param_2,(uVar2 >> 0x1d) + (uint)CARRY4(uVar2 * 8,param_2),uVar3,0,
                           param_2 * 2 + 0x2f90404f,(0xd06fbfb0 < param_2 * 2) + 0x9ae16a3b);
    }
  }
  else {
    iVar4 = param_2 * 2 + 0x2f90404f;
    iVar5 = (0xd06fbfb0 < param_2 * 2) + 0x9ae16a3b;
    lVar1 = CONCAT44(iVar5,iVar4);
    lVar6 = FUN_00011460(param_1);
    lVar6 = lVar6 + -0x651e95c4d06fbfb1;
    lVar7 = FUN_00011460(param_1 + (param_2 - 8));
    lVar8 = FUN_000114e4((int)lVar7,(int)((ulonglong)lVar7 >> 0x20),0x25);
    lVar8 = lVar6 + lVar8 * lVar1;
    lVar6 = FUN_000114e4((int)lVar6,(int)((ulonglong)lVar6 >> 0x20),0x19);
    lVar1 = (lVar7 + lVar6) * lVar1;
    lVar6 = FUN_00011550((int)lVar8,(int)((ulonglong)lVar8 >> 0x20),(int)lVar1,(int)((ulonglong)lVar1 >> 0x20),iVar4,
                         iVar5);
  }
  return lVar6;
}




undefined4 FUN_00011980(int param_1,int param_2)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  longlong lVar4;
  longlong lVar5;
  longlong lVar6;
  longlong lVar7;
  longlong lVar8;
  longlong lVar9;
  
  iVar2 = param_2 * 2 + 0x2f90404f;
  iVar3 = (0xd06fbfb0 < (uint)(param_2 * 2)) + 0x9ae16a3b;
  lVar4 = FUN_00011460(param_1);
  lVar5 = FUN_00011460(param_1 + 8);
  lVar6 = FUN_00011460(param_1 + param_2 + -8);
  lVar6 = lVar6 * CONCAT44(iVar3,iVar2);
  lVar7 = FUN_00011460(param_1 + param_2 + -0x10);
  lVar8 = lVar4 * -0x4b6d499041670d8d + lVar5;
  lVar8 = FUN_000114e4((int)lVar8,(int)((ulonglong)lVar8 >> 0x20),0x2b);
  lVar9 = FUN_000114e4((int)lVar6,(int)((ulonglong)lVar6 >> 0x20),0x1e);
  lVar8 = lVar7 * -0x651e95c4d06fbfb1 + lVar8 + lVar9;
  lVar5 = FUN_000114e4((int)(lVar5 + -0x651e95c4d06fbfb1),(int)((ulonglong)(lVar5 + -0x651e95c4d06fbfb1) >> 0x20),0x12);
  lVar6 = lVar6 + lVar5 + lVar4 * -0x4b6d499041670d8d;
  uVar1 = FUN_00011550((int)lVar8,(int)((ulonglong)lVar8 >> 0x20),(int)lVar6,(int)((ulonglong)lVar6 >> 0x20),iVar2,iVar3
                      );
  return uVar1;
}




undefined4 FUN_00011b58(int param_1,int param_2)

{
  longlong lVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  longlong lVar5;
  longlong lVar6;
  longlong lVar7;
  longlong lVar8;
  longlong lVar9;
  longlong lVar10;
  longlong lVar11;
  longlong lVar12;
  
  iVar3 = param_2 * 2 + 0x2f90404f;
  iVar4 = (0xd06fbfb0 < (uint)(param_2 * 2)) + 0x9ae16a3b;
  lVar1 = CONCAT44(iVar4,iVar3);
  lVar5 = FUN_00011460(param_1);
  lVar5 = lVar5 * -0x651e95c4d06fbfb1;
  lVar6 = FUN_00011460(param_1 + 8);
  lVar7 = FUN_00011460(param_1 + param_2 + -8);
  lVar7 = lVar7 * lVar1;
  lVar8 = FUN_00011460(param_1 + param_2 + -0x10);
  lVar9 = FUN_000114e4((int)(lVar5 + lVar6),(int)((ulonglong)(lVar5 + lVar6) >> 0x20),0x2b);
  lVar10 = FUN_000114e4((int)lVar7,(int)((ulonglong)lVar7 >> 0x20),0x1e);
  lVar8 = lVar8 * -0x651e95c4d06fbfb1 + lVar9 + lVar10;
  lVar6 = FUN_000114e4((int)(lVar6 + -0x651e95c4d06fbfb1),(int)((ulonglong)(lVar6 + -0x651e95c4d06fbfb1) >> 0x20),0x12);
  lVar7 = lVar7 + lVar6 + lVar5;
  lVar6 = FUN_00011550((int)lVar8,(int)((ulonglong)lVar8 >> 0x20),(int)lVar7,(int)((ulonglong)lVar7 >> 0x20),iVar3,iVar4
                      );
  lVar9 = FUN_00011460(param_1 + 0x10);
  lVar10 = FUN_00011460(param_1 + 0x18);
  lVar7 = FUN_00011460(param_1 + param_2 + -0x20);
  lVar8 = (lVar8 + lVar7) * lVar1;
  lVar11 = FUN_00011460(param_1 + param_2 + -0x18);
  lVar7 = lVar9 * lVar1 + lVar10;
  lVar7 = FUN_000114e4((int)lVar7,(int)((ulonglong)lVar7 >> 0x20),0x2b);
  lVar12 = FUN_000114e4((int)lVar8,(int)((ulonglong)lVar8 >> 0x20),0x1e);
  lVar7 = (lVar6 + lVar11) * lVar1 + lVar7 + lVar12;
  lVar5 = FUN_000114e4((int)(lVar10 + lVar5),(int)((ulonglong)(lVar10 + lVar5) >> 0x20),0x12);
  lVar8 = lVar8 + lVar5 + lVar9 * lVar1;
  uVar2 = FUN_00011550((int)lVar7,(int)((ulonglong)lVar7 >> 0x20),(int)lVar8,(int)((ulonglong)lVar8 >> 0x20),iVar3,iVar4
                      );
  return uVar2;
}




int * FUN_00011ed0(int *param_1,undefined4 param_2,uint param_3,int param_4,uint param_5,int param_6,uint param_7,
                  int param_8,uint param_9,int param_10,undefined8 param_11,undefined8 param_12)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  longlong lVar5;
  longlong lVar6;
  
  uVar1 = param_3 + (uint)param_11;
  iVar3 = param_4 + param_11._4_4_ + (uint)CARRY4(param_3,(uint)param_11);
  lVar5 = FUN_000114e4((uint)param_12 + uVar1 + param_9,
                       param_12._4_4_ + iVar3 + (uint)CARRY4((uint)param_12,uVar1) + param_10 +
                       (uint)CARRY4((uint)param_12 + uVar1,param_9),0x15);
  uVar2 = param_7 + param_5 + uVar1;
  iVar4 = param_8 + param_6 + iVar3 + (uint)CARRY4(param_5,uVar1) + (uint)CARRY4(param_7,param_5 + uVar1);
  lVar6 = FUN_000114e4(uVar2,iVar4,0x2c);
  *param_1 = param_9 + uVar2;
  param_1[1] = param_10 + iVar4 + (uint)CARRY4(param_9,uVar2);
  *(longlong *)(param_1 + 2) = lVar5 + lVar6 + CONCAT44(iVar3,uVar1);
  return param_1;
}




undefined4
FUN_00011fd4(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5,undefined4 param_6)

{
  undefined8 uVar1;
  undefined8 uVar2;
  undefined8 uVar3;
  undefined8 uVar4;
  
  uVar1 = FUN_00011460(param_2);
  uVar2 = FUN_00011460(param_2 + 8);
  uVar3 = FUN_00011460(param_2 + 0x10);
  uVar4 = FUN_00011460(param_2 + 0x18);
  FUN_00011ed0(param_1,(int)((ulonglong)uVar4 >> 0x20),(int)uVar1,(int)((ulonglong)uVar1 >> 0x20),uVar2,uVar3,uVar4,
               param_3,param_4,param_5,param_6);
  return param_1;
}




undefined8 FUN_00012078(int param_1,uint param_2)

{
  ulonglong uVar1;
  longlong lVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  bool bVar9;
  undefined8 uVar10;
  longlong lVar11;
  longlong lVar12;
  undefined4 local_88;
  undefined4 uStack_84;
  undefined4 uStack_80;
  undefined4 uStack_7c;
  uint local_78;
  int local_74;
  undefined8 local_70;
  undefined8 local_68;
  undefined8 local_60;
  undefined8 local_58;
  uint local_50;
  int local_4c;
  int local_48;
  int local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined8 local_38;
  undefined8 local_30;
  undefined8 local_28;
  
  local_40 = 0x51;
  local_3c = 0;
  local_78 = param_2;
  local_74 = param_1;
  if (param_2 < 0x11) {
    uVar10 = FUN_00011674(param_1,param_2);
  }
  else if (param_2 < 0x21) {
    uVar10 = FUN_00011980(param_1,param_2);
  }
  else if (param_2 < 0x41) {
    uVar10 = FUN_00011b58(param_1,param_2);
  }
  else {
    local_28._0_4_ = 0x51;
    local_28._4_4_ = 0;
    local_30._0_4_ = 0x4e64b6d4;
    local_30._4_4_ = 0x226bb95b;
    local_38 = FUN_00011498(0x22096bdd,0x919387da);
    local_38 = local_38 * -0x651e95c4d06fbfb1;
    local_60 = 0;
    local_58 = 0;
    local_70 = 0;
    local_68 = 0;
    iVar3 = (uint)local_28 * -0x651e95c5;
    iVar4 = local_28._4_4_ * 0x2f90404f;
    uVar1 = (ulonglong)(uint)local_28;
    lVar11 = FUN_00011460(local_74);
    local_44 = local_74 + (local_78 - 1 & 0xffffffc0);
    local_48 = local_44 + ((local_78 - 1 & 0x3f) - 0x3f);
    lVar12 = local_38;
    local_38 = lVar11 + CONCAT44(iVar3 + iVar4 + (int)(uVar1 * 0x2f90404f >> 0x20),(int)(uVar1 * 0x2f90404f));
    do {
      lVar2 = local_38 + local_30 + local_60;
      local_28 = local_38;
      lVar11 = FUN_00011460(local_74 + 8);
      local_38 = lVar12;
      lVar11 = lVar11 + lVar2;
      lVar12 = FUN_000114e4((int)lVar11,(int)((ulonglong)lVar11 >> 0x20),0x25);
      local_28 = lVar12 * -0x4b6d499041670d8d;
      lVar11 = local_30 + local_58;
      lVar12 = FUN_00011460(local_74 + 0x30);
      lVar12 = lVar12 + lVar11;
      lVar11 = FUN_000114e4((int)lVar12,(int)((ulonglong)lVar12 >> 0x20),0x2a);
      lVar12 = local_60;
      local_30 = lVar11 * -0x4b6d499041670d8d;
      local_28._0_4_ = (uint)local_68 ^ (uint)local_28;
      local_28._4_4_ = local_68._4_4_ ^ local_28._4_4_;
      lVar11 = FUN_00011460(local_74 + 0x28);
      local_30 = local_30 + lVar11 + lVar12;
      lVar12 = FUN_000114e4((int)(local_38 + local_70),(int)((ulonglong)(local_38 + local_70) >> 0x20),0x21);
      local_38 = lVar12 * -0x4b6d499041670d8d;
      lVar12 = (local_58 & 0xffffffff) * 0xbe98f273;
      FUN_00011fd4(&local_60,local_74,(int)lVar12,
                   local_58._4_4_ * -0x41670d8d + (int)local_58 * -0x4b6d4991 + (int)((ulonglong)lVar12 >> 0x20),
                   (uint)local_28 + (uint)local_70,
                   local_28._4_4_ + local_70._4_4_ + (uint)CARRY4((uint)local_28,(uint)local_70));
      iVar3 = local_74 + 0x20;
      lVar12 = local_38 + local_68;
      lVar11 = FUN_00011460(local_74 + 0x10);
      FUN_00011fd4(&local_70,iVar3,(int)lVar12,(int)((ulonglong)lVar12 >> 0x20),lVar11 + local_30);
      uVar5 = (uint)local_28;
      uVar7 = local_28._4_4_;
      lVar12 = CONCAT44(local_28._4_4_,(uint)local_28);
      local_74 = local_74 + 0x40;
    } while (local_74 != local_44);
    uVar6 = (uint)local_28 * 2 & 0x1fe;
    local_50 = uVar6 + 0xbe98f273;
    local_4c = (0x41670d8c < uVar6) + 0xb492b66f;
    local_74 = local_48;
    uVar8 = local_78 - 1 & 0x3f;
    uVar6 = uVar8 + (uint)local_70;
    local_70._4_4_ = local_70._4_4_ + (uint)CARRY4(uVar8,(uint)local_70);
    uVar8 = uVar6 + (uint)local_60;
    iVar3 = local_70._4_4_ + local_60._4_4_ + (uint)CARRY4(uVar6,(uint)local_60);
    local_60 = CONCAT44(iVar3,uVar8);
    local_70._0_4_ = uVar8 + uVar6;
    local_70._4_4_ = iVar3 + local_70._4_4_ + (uint)CARRY4(uVar8,uVar6);
    lVar12 = local_38 + local_30 + local_60;
    local_28 = local_38;
    local_38._0_4_ = uVar5;
    local_38._4_4_ = uVar7;
    lVar11 = FUN_00011460(local_48 + 8);
    lVar12 = lVar12 + lVar11;
    lVar12 = FUN_000114e4((int)lVar12,(int)((ulonglong)lVar12 >> 0x20),0x25);
    local_28 = lVar12 * CONCAT44(local_4c,local_50);
    lVar11 = local_30 + local_58;
    lVar12 = FUN_00011460(local_74 + 0x30);
    lVar12 = lVar12 + lVar11;
    lVar12 = FUN_000114e4((int)lVar12,(int)((ulonglong)lVar12 >> 0x20),0x2a);
    local_30 = lVar12 * CONCAT44(local_4c,local_50);
    uVar10 = VectorShiftLeft(local_68,3,0x40,0);
    local_28._0_4_ = (uint)uVar10 + (uint)local_68 ^ (uint)local_28;
    local_28._4_4_ =
         (int)((ulonglong)uVar10 >> 0x20) + local_68._4_4_ + (uint)CARRY4((uint)uVar10,(uint)local_68) ^ local_28._4_4_;
    uVar10 = VectorShiftLeft(local_60,3,0x40,0);
    bVar9 = CARRY4((uint)uVar10,(uint)local_60);
    iVar4 = (uint)uVar10 + (uint)local_60;
    iVar3 = (int)((ulonglong)uVar10 >> 0x20) + local_60._4_4_;
    lVar12 = FUN_00011460(local_74 + 0x28);
    local_30 = local_30 + lVar12 + CONCAT44(iVar3 + (uint)bVar9,iVar4);
    local_38 = FUN_000114e4((uint)local_70 + (uint)local_38,
                            local_70._4_4_ + local_38._4_4_ + (uint)CARRY4((uint)local_70,(uint)local_38),0x21);
    local_38 = local_38 * CONCAT44(local_4c,local_50);
    lVar12 = (local_58 & 0xffffffff) * (ulonglong)local_50;
    FUN_00011fd4(&local_88,local_74,(int)lVar12,
                 local_58._4_4_ * local_50 + (int)local_58 * local_4c + (int)((ulonglong)lVar12 >> 0x20),
                 (uint)local_28 + (uint)local_70,
                 local_28._4_4_ + local_70._4_4_ + (uint)CARRY4((uint)local_28,(uint)local_70));
    local_60._0_4_ = local_88;
    local_60._4_4_ = uStack_84;
    local_58._0_4_ = uStack_80;
    local_58._4_4_ = uStack_7c;
    iVar3 = local_74 + 0x20;
    lVar12 = local_38 + local_68;
    lVar11 = FUN_00011460(local_74 + 0x10);
    FUN_00011fd4(&local_88,iVar3,(int)lVar12,(int)((ulonglong)lVar12 >> 0x20),lVar11 + local_30);
    local_68._0_4_ = uStack_80;
    local_68._4_4_ = uStack_7c;
    uVar5 = (uint)local_28;
    uVar7 = local_28._4_4_;
    local_28 = local_38;
    local_38._0_4_ = uVar5;
    local_38._4_4_ = uVar7;
    lVar12 = FUN_00011550((uint)local_60,local_60._4_4_,local_88,uStack_84,local_50,local_4c);
    lVar11 = FUN_00011498((undefined4)local_30,local_30._4_4_);
    lVar12 = lVar12 + lVar11 * -0x3c5a37a36834ced9 + CONCAT44(local_38._4_4_,(uint)local_38);
    lVar11 = FUN_00011550((int)local_58,local_58._4_4_,(uint)local_68,local_68._4_4_,local_50);
    uVar10 = FUN_00011550((int)lVar12,(int)((ulonglong)lVar12 >> 0x20),(int)(lVar11 + local_28),
                          (int)((ulonglong)(lVar11 + local_28) >> 0x20),local_50,local_4c);
  }
  return uVar10;
}




int FUN_000128a0(char *param_1,char *param_2,char *param_3,char *param_4,char param_5,char param_6,char param_7)

{
  size_t sVar1;
  ulong uVar2;
  char *pcVar3;
  int iVar4;
  undefined4 uVar5;
  char local_bf4 [260];
  SHA256_CTX SStack_af0;
  uchar local_a80 [32];
  undefined4 local_a60;
  undefined1 auStack_a5c [252];
  SHA256_CTX SStack_960;
  uchar auStack_8f0 [1056];
  undefined4 local_4d0;
  undefined1 auStack_4cc [1020];
  int local_d0;
  undefined4 uStack_cc;
  undefined1 auStack_c8 [48];
  int local_98;
  uint local_60;
  uint local_5c;
  int local_58;
  RSA *local_54;
  BIO *local_50;
  FILE *local_4c;
  FILE *local_48;
  int local_44;
  uint local_40;
  FILE *local_3c;
  uint local_38;
  ushort local_32;
  longlong local_30;
  FILE *local_28;
  int local_24;
  int local_20;
  int local_1c;
  int local_18;
  int local_14;
  uint local_10;
  byte local_9;
  
  FUN_000137f4(param_1,auStack_c8);
  local_24 = local_98;
  if (local_98 < 0x800) {
    printf("File \'%s\' Not Enough %d, Something Wrong!\n",param_1,0x800);
    local_44 = 6;
  }
  else {
    local_28 = fopen64(param_1,"rb");
    if (local_28 == (FILE *)0x0) {
      printf("Read File \'%s\' Failed!\n",param_1);
      local_44 = 7;
    }
    else {
      fread(param_4,0x800,1,local_28);
      if (*param_4 == '&') {
        printf("miner_type %s\n",param_2);
        sVar1 = strlen(param_2);
        local_30 = FUN_00012078(param_2,sVar1);
        memcpy(&local_d0,param_4 + 2,8);
        iVar4 = local_d0;
        uVar5 = uStack_cc;
        printf("miner_type_hash %16llx, bmu_hash %16llx\n");
        if (local_30 == CONCAT44(uStack_cc,local_d0)) {
          local_9 = 0;
          local_32 = CONCAT11(param_4[0xb],param_4[0xc]);
          if (param_7 != '\0') {
            printf("content:%x\n",(uint)local_32,(int)(short)((ushort)(byte)param_4[0xb] << 8),(uint)local_32,iVar4,
                   uVar5);
            if ((local_32 & 0xfe00) != 0xfe00) {
              puts("This Package Was Not Full Package!");
              return 0x14;
            }
          }
          for (local_10 = 0; (int)local_10 < 0x10; local_10 = local_10 + 1) {
            if (((int)(uint)local_32 >> (local_10 & 0xff) & 1U) != 0) {
              local_9 = local_9 + 1;
            }
          }
          if (local_9 == param_4[0x518]) {
            local_14 = ((byte)param_4[0x518] + 9) * 0x100;
            local_38 = (uint)(byte)param_4[0x519] << 0x18 | (uint)(byte)param_4[0x51a] << 0x10 |
                       (uint)(byte)param_4[0x51b] << 8 | (uint)(byte)param_4[0x51c];
            for (local_18 = 0; local_18 < (int)(uint)local_9; local_18 = local_18 + 1) {
              local_60 = (uint)(byte)param_4[local_18 * 5 + 0x51e] << 0x18 |
                         (uint)(byte)param_4[local_18 * 5 + 0x51f] << 0x10 |
                         (uint)(byte)param_4[local_18 * 5 + 0x520] << 8 | (uint)(byte)param_4[local_18 * 5 + 0x521];
              local_14 = local_14 + local_60;
              printf("file[%d] size:[%d]\n",local_18,local_60,local_14,iVar4,uVar5);
            }
            if (local_14 == local_24) {
              local_3c = fopen64(param_3,"r");
              if (local_3c == (FILE *)0x0) {
                printf("Cannot Open Root PublicKey \'%s\'!\n",param_3);
                if (local_28 != (FILE *)0x0) {
                  fclose(local_28);
                }
                local_44 = 0xb;
              }
              else {
                local_4d0 = 0;
                memset(auStack_4cc,0,0x3fc);
                fread(&local_4d0,0x400,1,local_3c);
                fclose(local_3c);
                local_3c = (FILE *)0x0;
                local_40 = (uint)CONCAT11(param_4[0x16],param_4[0x17]);
                local_44 = FUN_00010c50(param_4 + 0x18,local_40,param_4 + 0x418,&local_4d0);
                if (local_44 == 0) {
                  local_48 = fopen64("/usr/bin/fw_version","w");
                  if (local_48 != (FILE *)0x0) {
                    fwrite(param_4 + 0xd,1,8,local_48);
                    fclose(local_48);
                  }
                  if (param_5 != '\0') {
                    local_4c = fopen64("/tmp/tmpfw/miner.pem","w");
                    if (local_4c == (FILE *)0x0) {
                      puts("Dump Miner.pem Failed!\r");
                      return 0xf;
                    }
                    fwrite(param_4 + 0x18,1,local_40,local_4c);
                    fclose(local_4c);
                    local_4c = fopen64("/tmp/tmpfw/miner.pem.sig","w");
                    if (local_4c == (FILE *)0x0) {
                      puts("Dump Miner.pem.sig Failed!\r");
                      return 0x10;
                    }
                    fwrite(param_4 + 0x418,1,0x100,local_4c);
                    fclose(local_4c);
                  }
                  memset(auStack_8f0,0,0x420);
                  SHA256_Init(&SStack_960);
                  SHA256_Update(&SStack_960,param_4,0x800);
                  SHA256_Final(auStack_8f0,&SStack_960);
                  for (local_1c = 0; local_1c < (int)(uint)local_9; local_1c = local_1c + 1) {
                    local_5c = (uint)(byte)param_4[local_1c * 5 + 0x51e] << 0x18 |
                               (uint)(byte)param_4[local_1c * 5 + 0x51f] << 0x10 |
                               (uint)(byte)param_4[local_1c * 5 + 0x520] << 8 |
                               (uint)(byte)param_4[local_1c * 5 + 0x521];
                    FUN_00010dc8(local_28,local_5c,auStack_8f0 + (local_1c + 1) * 0x20,param_4[local_1c * 5 + 0x51d],0,
                                 param_5);
                  }
                  for (local_20 = 0; local_20 < (int)(uint)local_9; local_20 = local_20 + 1) {
                    FUN_00010dc8(local_28,0x100,auStack_8f0 + (local_9 + 1 + local_20) * 0x20,
                                 param_4[local_20 * 5 + 0x51d],1,param_5);
                  }
                  local_a60 = 0;
                  memset(auStack_a5c,0,0xfc);
                  fseek(local_28,-0x100,2);
                  fread(&local_a60,0x100,1,local_28);
                  local_a80[0] = '\0';
                  local_a80[1] = '\0';
                  local_a80[2] = '\0';
                  local_a80[3] = '\0';
                  local_a80[4] = '\0';
                  local_a80[5] = '\0';
                  local_a80[6] = '\0';
                  local_a80[7] = '\0';
                  local_a80[8] = '\0';
                  local_a80[9] = '\0';
                  local_a80[10] = '\0';
                  local_a80[0xb] = '\0';
                  local_a80[0xc] = '\0';
                  local_a80[0xd] = '\0';
                  local_a80[0xe] = '\0';
                  local_a80[0xf] = '\0';
                  local_a80[0x10] = '\0';
                  local_a80[0x11] = '\0';
                  local_a80[0x12] = '\0';
                  local_a80[0x13] = '\0';
                  local_a80[0x14] = '\0';
                  local_a80[0x15] = '\0';
                  local_a80[0x16] = '\0';
                  local_a80[0x17] = '\0';
                  local_a80[0x18] = '\0';
                  local_a80[0x19] = '\0';
                  local_a80[0x1a] = '\0';
                  local_a80[0x1b] = '\0';
                  local_a80[0x1c] = '\0';
                  local_a80[0x1d] = '\0';
                  local_a80[0x1e] = '\0';
                  local_a80[0x1f] = '\0';
                  SHA256_Init(&SStack_af0);
                  SHA256_Update(&SStack_af0,auStack_8f0,(uint)local_9 * 0x40 + 0x20);
                  SHA256_Final(local_a80,&SStack_af0);
                  local_50 = (BIO *)0x0;
                  local_54 = (RSA *)0x0;
                  local_50 = BIO_new_mem_buf(param_4 + 0x18,0x400);
                  local_54 = PEM_read_bio_RSA_PUBKEY(local_50,(RSA **)0x0,(undefined1 *)0x0,(void *)0x0);
                  if (local_54 == (RSA *)0x0) {
                    uVar2 = ERR_get_error();
                    pcVar3 = ERR_error_string(uVar2,(char *)0x0);
                    printf("OpenSSL error: %s\n",pcVar3);
                    puts("Load Pem Failed!");
                    local_44 = 0x11;
                  }
                  else {
                    local_58 = RSA_verify(0x2a0,local_a80,0x20,(uchar *)&local_a60,0x100,local_54);
                    if (local_54 != (RSA *)0x0) {
                      RSA_free(local_54);
                    }
                    if (local_50 != (BIO *)0x0) {
                      BIO_free(local_50);
                    }
                    if (local_58 == 1) {
                      if (local_28 != (FILE *)0x0) {
                        fclose(local_28);
                      }
                      local_28 = (FILE *)0x0;
                      puts("All Done!\r");
                      if (param_6 != '\0') {
                        puts("This Comment Of This Package:");
                        local_bf4[0] = '\0';
                        local_bf4[1] = '\0';
                        local_bf4[2] = '\0';
                        local_bf4[3] = '\0';
                        memset(local_bf4 + 4,0,0xfd);
                        memcpy(local_bf4,param_4 + 0x550,0x100);
                        puts(local_bf4);
                      }
                      local_44 = 0;
                    }
                    else {
                      puts("Check File Sig failed!\r");
                      uVar2 = ERR_get_error();
                      pcVar3 = ERR_error_string(uVar2,(char *)0x0);
                      printf("OpenSSL error: %s\n",pcVar3);
                      local_44 = 0x12;
                    }
                  }
                }
                else {
                  printf("Check pem payload failed! ret:[%d]\n",local_44);
                  if (local_28 != (FILE *)0x0) {
                    fclose(local_28);
                  }
                }
              }
            }
            else {
              printf("Check FileSize Failed, FileSize Should Be [%d]Bytes, But It Was [%d] Bytes, And Total Says[%d]\n",
                     local_38,local_24,local_14,iVar4,uVar5);
              if (local_28 != (FILE *)0x0) {
                fclose(local_28);
              }
              local_44 = 10;
            }
          }
          else {
            printf("Content Doesn\'t Match![%d][%d]\n",(uint)(byte)param_4[0x518],(uint)local_9,(uint)local_9,iVar4,
                   uVar5);
            if (local_28 != (FILE *)0x0) {
              fclose(local_28);
            }
            local_44 = 9;
          }
        }
        else {
          puts("input miner_type and bmu miner type donot match!");
          if (local_28 != (FILE *)0x0) {
            fclose(local_28);
          }
          local_44 = 0x1e;
        }
      }
      else {
        printf("\'%s\' Not A Btmu File!\n",param_1);
        if (local_28 != (FILE *)0x0) {
          fclose(local_28);
        }
        local_44 = 8;
      }
    }
  }
  return local_44;
}




undefined4 FUN_000133d0(int param_1,undefined4 *param_2)

{
  size_t sVar1;
  undefined1 auStack_b10 [256];
  undefined1 auStack_a10 [2048];
  char local_210 [128];
  char local_190 [128];
  char local_110 [256];
  undefined4 local_10;
  char local_b;
  char local_a;
  undefined1 local_9;
  
  if (param_1 < 2) {
    FUN_000108f8(*param_2);
    local_10 = 1;
  }
  else if (*(char *)param_2[1] == '-') {
    local_110[0] = '\0';
    local_110[1] = '\0';
    local_110[2] = '\0';
    local_110[3] = '\0';
    memset(local_110 + 4,0,0xfc);
    local_190[0] = '\0';
    local_190[1] = '\0';
    local_190[2] = '\0';
    local_190[3] = '\0';
    memset(local_190 + 4,0,0x7c);
    local_210[0] = '\0';
    local_210[1] = '\0';
    local_210[2] = '\0';
    local_210[3] = '\0';
    memset(local_210 + 4,0,0x7c);
    memset(auStack_a10,0,0x800);
    local_9 = 0;
    local_a = '\0';
    local_b = '\0';
    memset(auStack_b10,0,0xfd);
    if (param_1 == 5) {
      sVar1 = strlen((char *)param_2[2]);
      if (0xff < sVar1) {
        puts("fileName Too Long!");
        return 3;
      }
      strcpy(local_110,(char *)param_2[2]);
      sVar1 = strlen((char *)param_2[3]);
      if (0x7f < sVar1) {
        puts("fileName Too Long!");
        return 3;
      }
      strcpy(local_190,(char *)param_2[3]);
      sVar1 = strlen((char *)param_2[4]);
      if (0x7f < sVar1) {
        puts("pemName Too Long!");
        return 4;
      }
      strcpy(local_210,(char *)param_2[4]);
    }
    else if (param_1 == 3) {
      sVar1 = strlen((char *)param_2[2]);
      if (0x7f < sVar1) {
        puts("fileName Too Long!");
        return 3;
      }
      strcpy(local_190,(char *)param_2[2]);
    }
    else if (param_1 != 2) {
      puts("Param Err!");
      FUN_000108f8(*param_2);
      return 3;
    }
    local_10 = 0;
    switch(*(undefined1 *)(param_2[1] + 1)) {
    default:
      puts("Command Not Support!");
      FUN_000108f8(*param_2);
      local_10 = 5;
      break;
    case 0x6e:
      local_10 = FUN_000109a8(local_190);
      break;
    case 0x71:
      local_10 = FUN_00010b7c();
      break;
    case 0x78:
      local_b = '\x01';
    case 0x70:
      if (local_b == '\0') {
        local_a = '\x01';
      }
    case 0x73:
      if (local_a == '\0') {
        local_9 = 1;
      }
    case 0x66:
      local_10 = FUN_000128a0(local_190,local_110,local_210,auStack_a10,local_9,local_a,local_b);
    }
  }
  else {
    FUN_000108f8(*param_2);
    local_10 = 2;
  }
  return local_10;
}




void FUN_000137b4(undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

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




void FUN_000137f4(char *param_1,stat64 *param_2)

{
  __xstat64(3,param_1,param_2);
  return;
}




void _DT_FINI(void)

{
  return;
}



