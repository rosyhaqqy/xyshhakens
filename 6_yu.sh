echo '//' > /etc/bind/named.conf.local
echo '// Do any local configuration here' >> /etc/bind/named.conf.local
echo '//' >> /etc/bind/named.conf.local
echo '' >> /etc/bind/named.conf.local
echo '// Consider adding the 1918 zones here, if they are not used in your' >> /etc/bind/named.conf.local
echo '// organization' >> /etc/bind/named.conf.local
echo '//include "/etc/bind/zones.rfc1918";' >> /etc/bind/named.conf.local
echo '' >> /etc/bind/named.conf.local
echo 'zone "arjuna.E14.com" {' >> /etc/bind/named.conf.local
echo '        type master;' >> /etc/bind/named.conf.local
echo '        notify yes;' >> /etc/bind/named.conf.local
echo '        also-notify { 192.213.3.2; };' >> /etc/bind/named.conf.local
echo '        allow-transfer { 192.213.3.2; };' >> /etc/bind/named.conf.local
echo '        file "/etc/bind/jarkom/arjuna.E14.com";' >> /etc/bind/named.conf.local
echo '};' >> /etc/bind/named.conf.local
echo '' >> /etc/bind/named.conf.local
echo 'zone "abimanyu.E14.com" {' >> /etc/bind/named.conf.local
echo '        type master;' >> /etc/bind/named.conf.local
echo '        file "/etc/bind/jarkom/abimanyu.E14.com";' >> /etc/bind/named.conf.local
echo '};' >> /etc/bind/named.conf.local
echo '' >> /etc/bind/named.conf.local
echo 'zone "2.213.192.in-addr.arpa" {' >> /etc/bind/named.conf.local
echo '    type master;' >> /etc/bind/named.conf.local
echo '    file "/etc/bind/jarkom/2.213.192.in-addr.arpa";' >> /etc/bind/named.conf.local
echo '};' >> /etc/bind/named.conf.local
service bind9 restart
service bind9 stop
