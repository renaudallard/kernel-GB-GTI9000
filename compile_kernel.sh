#/bin/sh
. ./setenv.sh
make -i clean
chmod 4755 ~/galaxy/initramfs-gb/root/sbin/su
make -j4
find . -name *.ko | while read MODULE; do cp $MODULE ../initramfs-gb/root/lib/modules/ ; done
make -j4
cp arch/arm/boot/zImage /home/public_html/r/
