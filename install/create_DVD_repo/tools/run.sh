
mv /tmp/tools/rhel-server-6.4-x86_64-dvd.iso /root/
mkdir /mnt/rhel_dvd
/tmp/tools/mount_dvd.sh
cat mount_dvd.sh >> /etc/rc.local

mkdir /etc/yum.repos.d/backup
mv /etc/yum.repos.d/*.repo /etc/yum.repos.d/backup
mv /tmp/tools/rheldvd.repo /etc/yum.repos.d/

yum clean
rpm --import /mnt/rhel_dvd/RPM-GPG-KEY-redhat-release
yum update