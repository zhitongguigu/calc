adb root
adb wait-for-device
adb remount
adb wait-for-device
adb push busybox.sh /data
adb push udhcpd.conf /data
adb remount
adb wait-for-device
adb shell mount -o rw,remount /system
adb wait-for-device
adb push busybox /system/xbin/busybox
adb shell chmod 755 /system/xbin/busybox
adb shell mount -o ro,remount /system
adb wait-for-device
adb reboot
