apt-get update
apt-get install bind9 -y
echo 'zone "arjuna.E14.com" {' >> /etc/bind/named.conf.local
echo '    type master;' >> /etc/bind/named.conf.local
echo '    file "/etc/bind/jarkom/arjuna.E14.com";' >> /etc/bind/named.conf.local
echo '};' >> /etc/bind/named.conf.local
mkdir /etc/bind/jarkom
echo ';' BIND data file for local loopback interface > /etc/bind/jarkom/arjuna.E14.com
echo ';' BIND data file for local loopback interface >> /etc/bind/jarkom/arjuna.E14.com
echo '$TTL    604800' >> /etc/bind/jarkom/arjuna.E14.com
echo '@       IN      SOA     arjuna.E14.com. root.arjuna.E14.com. (' >> /etc/bind/jarkom/arjuna.E14.com
echo '                    2023101001      ; Serial' >> /etc/bind/jarkom/arjuna.E14.com
echo '                     604800         ; Refresh' >> /etc/bind/jarkom/arjuna.E14.com
echo '                      86400         ; Retry' >> /etc/bind/jarkom/arjuna.E14.com
echo '                    2419200         ; Expire' >> /etc/bind/jarkom/arjuna.E14.com
echo '                     604800 )       ; Negative Cache TTL' >> /etc/bind/jarkom/arjuna.E14.com
echo ';' BIND data file for local loopback interface >> /etc/bind/jarkom/arjuna.E14.com
echo '@       IN      NS      arjuna.E14.com.' >> /etc/bind/jarkom/arjuna.E14.com
echo '@       IN      A       192.213.2.2' >> /etc/bind/jarkom/arjuna.E14.com
service bind9 restart
