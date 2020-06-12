[root@server conf.d]# cat /etc/hosts
127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4
::1         localhost t.localdomain localhost6 localhost6.localdomain6
192.168.56.101  www.example1.com
192.168.56.101  www.example2.com
[root@server conf.d]# cat example*
<VirtualHost *:80>
    ServerAdmin devopsharish1.com
    DocumentRoot "/var/www/html/example1"
    ServerName www.example1.com
    ErrorLog "/var/log/httpd/example1.com-error_log"
    CustomLog "/var/log/httpd/example1.com-access_log" common
</VirtualHost>

<VirtualHost *:80>
    ServerAdmin devopsharish1.com
    DocumentRoot "/var/www/html/example2"
    ServerName www.example2.com
    ErrorLog "/var/log/httpd/example2.com-error_log"
    CustomLog "/var/log/httpd/example2.com-access_log" common
</VirtualHost>

[root@server conf.d]# pwd
/etc/httpd/conf.d
[root@server conf.d]# ls
autoindex.conf  example1.conf  example2.conf  README  userdir.conf  welcome.conf
[root@server conf.d]#
