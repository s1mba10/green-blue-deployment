#!/bin/bash
yum -y update
yum -y install nginx
myip=`curl http://checkip.amazonaws.com`
cat <<EOF > /usr/share/nginx/html/index.html
<html>
<body bgcolor="black">
<h2><font color="gold">Build by Power of Terraform <font color="red"> v0.12</font></h2><br><p>
<font color="green">Server PrivateIP: <font color="aqua">$myip<br><br>

<font color="magenta">
<b>Version 4.0</b>
</body>
</html>
EOF

systemctl start nginx


