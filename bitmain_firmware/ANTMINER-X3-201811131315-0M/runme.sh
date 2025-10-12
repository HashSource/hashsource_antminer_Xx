#set -x
file=/tmp/$$
#echo "runme.sh exe"

if [ -f /etc/bitmain-pub.pem ]; then
	if [ ! -f fileinfo.sig ]; then
		echo "RUNME: Cannot Find Signature!!!" >> /tmp/upgrade_result
		exit 1
	fi
	openssl dgst -sha256 -verify /etc/bitmain-pub.pem -signature  fileinfo.sig  fileinfo >/dev/null  2>&1
	vres=$?
	
	if [ $vres -eq 1 ]; then
		echo "FileList Not Signtured!!!" >> /tmp/upgrade_result
		exit 2
	fi
	md5sum -s -c fileinfo
	vres=$?
	if [ $vres -eq 1 ]; then
		echo "FileList Check Failed!!!" >> /tmp/upgrade_result
		exit 3
	fi
fi

if [ -e /dev/mmcblk0p3 ]; then
    mkdir $file.boot
    mount /dev/mmcblk0p1 $file.boot
    cp -rf * $file.boot/
    umount $file.boot
    sync
fi
if [ -e /dev/mtd8 ]; then
    if [ -e initramfs.bin.SD ]; then
        #echo "flash romfs"
        flash_eraseall /dev/mtd8 >/dev/null 2>&1
        nandwrite -p /dev/mtd8 initramfs.bin.SD >/dev/null 2>&1
    fi

    if [ -e am335x-boneblack-bitmainer.dtb ]; then
        flash_eraseall /dev/mtd6 >/dev/null 2>&1
        nandwrite -p /dev/mtd6 am335x-boneblack-bitmainer.dtb >/dev/null 2>&1
    fi
    
    if [ -e uImage.bin ]; then
        #echo "flash kernel"
        flash_eraseall /dev/mtd7 >/dev/null 2>&1
        nandwrite -p /dev/mtd7 uImage.bin >/dev/null 2>&1
    fi
    if [ -e u-boot.img ]; then
        #echo "flash kernel"
        flash_eraseall /dev/mtd4 >/dev/null 2>&1
        nandwrite -p /dev/mtd4 u-boot.img >/dev/null 2>&1
        flash_eraseall /dev/mtd5 >/dev/null 2>&1
    fi
fi

