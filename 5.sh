echo 'zone "2.213.192.in-addr.arpa" {' >> /etc/bind/named.conf.local
echo '    type master;' >> /etc/bind/named.conf.local
echo '    file "/etc/bind/jarkom/2.213.192.in-addr.arpa";' >> /etc/bind/named.conf.local
echo '};' >> /etc/bind/named.conf.local


echo ';' BIND data file for local loopback interface > /etc/bind/jarkom/2.213.192.in-addr.arpa
echo ';' BIND data file for local loopback interface >> /etc/bind/jarkom/2.213.192.in-addr.arpa
echo '$TTL    604800' >> /etc/bind/jarkom/2.213.192.in-addr.arpa
echo '@       IN      SOA     abimanyu.E14.com. root.abimanyu.E14.com. (' >> /etc/bind/jarkom/2.213.192.in-addr.arpa
echo '                    2023101001      ; Serial' >> /etc/bind/jarkom/2.213.192.in-addr.arpa
echo '                     604800         ; Refresh' >> /etc/bind/jarkom/2.213.192.in-addr.arpa
echo '                      86400         ; Retry' >> /etc/bind/jarkom/2.213.192.in-addr.arpa
echo '                    2419200         ; Expire' >> /etc/bind/jarkom/2.213.192.in-addr.arpa
echo '                     604800 )       ; Negative Cache TTL' >> /etc/bind/jarkom/2.213.192.in-addr.arpa
echo '' >> /etc/bind/jarkom/2.213.192.in-addr.arpa
echo '2.213.192.in-addr.arpa.     IN      NS      abimanyu.E14.com.' >> /etc/bind/jarkom/2.213.192.in-addr.arpa
echo '2                       IN      PTR     abimanyu.E14.com.' >> /etc/bind/jarkom/2.213.192.in-addr.arpa
