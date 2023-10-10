apt-get update
apt-get install bind9 -y
echo 'zone "abimanyu.E14.com" {' > /etc/bind/named.conf.local
echo '    type slave;' >> /etc/bind/named.conf.local
echo '    masters { 192.213.2.2; };' >> /etc/bind/named.conf.local
echo '    file "/var/lib/bind/abimanyu.E14.com";' >> /etc/bind/named.conf.local
echo '};' >> /etc/bind/named.conf.local
service bind9 restart
