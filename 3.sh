echo 'zone "abimanyu.E14.com" {' >> /etc/bind/named.conf.local
echo '    type master;' >> /etc/bind/named.conf.local
echo '    file "/etc/bind/jarkom/abimanyu.E14.com";' >> /etc/bind/named.conf.local
echo '};' >> /etc/bind/named.conf.local
echo ';' BIND data file for local loopback interface > /etc/bind/jarkom/abimanyu.E14.com
echo ';' BIND data file for local loopback interface >> /etc/bind/jarkom/abimanyu.E14.com
echo '$TTL    604800' >> /etc/bind/jarkom/abimanyu.E14.com
echo '@       IN      SOA     abimanyu.E14.com. root.abimanyu.E14.com. (' >> /etc/bind/jarkom/abimanyu.E14.com
echo '                              2         ; Serial' >> /etc/bind/jarkom/abimanyu.E14.com
echo '                         604800         ; Refresh' >> /etc/bind/jarkom/abimanyu.E14.com
echo '                          86400         ; Retry' >> /etc/bind/jarkom/abimanyu.E14.com
echo '                        2419200         ; Expire' >> /etc/bind/jarkom/abimanyu.E14.com
echo '                         604800 )       ; Negative Cache TTL' >> /etc/bind/jarkom/abimanyu.E14.com
echo ';' BIND data file for local loopback interface >> /etc/bind/jarkom/abimanyu.E14.com
echo '@       IN      NS      abimanyu.E14.com.' >> /etc/bind/jarkom/abimanyu.E14.com
echo '@       IN      A       192.213.2.2' >> /etc/bind/jarkom/abimanyu.E14.com
echo 'www     IN      CNAME   abimanyu.E14.com.' >> /etc/bind/jarkom/abimanyu.E14.com
service bind9 restart
