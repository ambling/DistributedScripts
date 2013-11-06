cd /tmp/tools
./depends.sh
rpm -ivh libconfuse-2.7-4.el6.x86_64.rpm
rpm -ivh libconfuse-devel-2.7-4.el6.x86_64.rpm

tar xf rrdtool-1.4.8.tar.gz
cd rrdtool-1.4.8
./configure --prefix=/usr
make -j 16
make install

cd /tmp/tools
tar xf ganglia-3.6.0.tar.gz
cd ganglia-3.6.0
./configure --prefix=/usr --with-gmetad
make -j 16
make install

gmond -t > /usr/etc/gmond.conf
cp gmond/gmond.init /etc/rc.d/init.d/gmond
chkconfig --add gmond
service gmond start

cd /tmp/tools
./firewall.sh
