apt-get update
apt-get install bind9 -y
echo 'zone "arjuna.E14.com" {' >> /etc/bind/named.conf.local
echo '    type master;' >> /etc/bind/named.conf.local
echo '    file "/etc/bind/jarkom/arjuna.E14.com";' >> /etc/bind/named.conf.local
echo '};' >> /etc/bind/named.conf.local
mkdir /etc/bind/jarkom
cp /etc/bind/db.local /etc/bind/jarkom/jarkom2022.com
nano /etc/bind/jarkom/jarkom2022.com
service bind9 restart

## add nameserver in 2 client
