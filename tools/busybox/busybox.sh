busybox ifconfig eth0 | grep -q inet || ( busybox ifconfig eth0 192.168.33.1 up ;  busybox udhcpd /data/udhcpd.conf )
