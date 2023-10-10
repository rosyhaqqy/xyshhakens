echo 'options {' > /etc/bind/named.conf.options
echo '        directory "/var/cache/bind";' >> /etc/bind/named.conf.options
echo '        dnssec-validation auto;' >> /etc/bind/named.conf.options
echo '  allow-query{any;};' >> /etc/bind/named.conf.options
echo '        auth-nxdomain no;    # conform to RFC1035' >> /etc/bind/named.conf.options
echo '        listen-on-v6 { any; };' >> /etc/bind/named.conf.options
echo '};' >> /etc/bind/named.conf.options

echo '//' > /etc/bind/named.conf.local
echo '// Do any local configuration here' >> /etc/bind/named.conf.local
echo '//' >> /etc/bind/named.conf.local
echo '' >> /etc/bind/named.conf.local
echo '// Consider adding the 1918 zones here, if they are not used in your' >> /etc/bind/named.conf.local
echo '// organization' >> /etc/bind/named.conf.local
echo '//include "/etc/bind/zones.rfc1918";' >> /etc/bind/named.conf.local
echo '' >> /etc/bind/named.conf.local
echo 'zone "baratayuda.abimanyu.E14.com" {' >> /etc/bind/named.conf.local
echo '    type master;' >> /etc/bind/named.conf.local
echo '    file "/etc/bind/delegasi/baratayuda.abimanyu.E14.com";' >> /etc/bind/named.conf.local
echo '};' >> /etc/bind/named.conf.local

mkdir /etc/bind/delegasi
cp /etc/bind/db.local /etc/bind/delegasi/baratayuda.abimanyu.E14.com

echo ';' BIND data file for local loopback interface > /etc/bind/delegasi/baratayuda.abimanyu.E14.com
echo '$TTL    604800' >> /etc/bind/delegasi/baratayuda.abimanyu.E14.com
echo '@       IN      SOA     baratayuda.abimanyu.E14.com. root.baratayuda.abimanyu.E14.com. (' >> /etc/bind/delegasi/baratayuda.abimanyu.E14.com
echo '                              2023101001         ; Serial' >> /etc/bind/delegasi/baratayuda.abimanyu.E14.com
echo '                         604800         ; Refresh' >> /etc/bind/delegasi/baratayuda.abimanyu.E14.com
echo '                          86400         ; Retry' >> /etc/bind/delegasi/baratayuda.abimanyu.E14.com
echo '                        2419200         ; Expire' >> /etc/bind/delegasi/baratayuda.abimanyu.E14.com
echo '                         604800 )       ; Negative Cache TTL' >> /etc/bind/delegasi/baratayuda.abimanyu.E14.com
echo ';' >> /etc/bind/delegasi/baratayuda.abimanyu.E14.com
echo '@       IN      NS      baratayuda.abimanyu.E14.com.' >> /etc/bind/delegasi/baratayuda.abimanyu.E14.com
echo '@       IN      A       192.213.3.4' >> /etc/bind/delegasi/baratayuda.abimanyu.E14.com
echo 'www     IN      CNAME   baratayuda.abimanyu.E14.com.' >> /etc/bind/delegasi/baratayuda.abimanyu.E14.com

service bind9 restart
