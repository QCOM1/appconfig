#scp -r -i ssh/1.pem ssh ec2-user@ec2-35-173-47-74.compute-1.amazonaws.com:~/.
#scp -r -i 1.pem *  ec2-user@ec2-35-173-215-43.compute-1.amazonaws.com:~/.

sudo su 
 yes| cp sudoers /etc/sudoers
 yes| cp sshd_config /etc/ssh/sshd_config
 mkdir /home/ansadmin/.ssh
  cp id_rsa /home/ansadmin/.ssh
  cp id_rsa.pub /home/ansadmin/.ssh
cp -rf authorized_keys  /home/ansadmin/.ssh

chmod 750 /home/ansadmin
chmod 700 /home/ansadmin/.ssh
chmod 600 /home/ansadmin/.ssh/authorized_keys
chmod 600 /home/ansadmin/.ssh/id_rsa
chmod 644 /home/ansadmin/.ssh/id_rsa.pub
service sshd restart

sudo yum install -y elinks   git

sudo su ansadmin
cd 
sudo chown  -R ansadmin:ansadmin .ssh/
ip a
ssh ansadmin@172.31.71.155 -o StrictHostKeyChecking=no

sudo su 
 yes| cp sudoers /etc/sudoers
 yes| cp sshd_config /etc/ssh/sshd_config
 mkdir /home/ansadmin/.ssh
  cp id_rsa /home/ansadmin/.ssh
  cp id_rsa.pub /home/ansadmin/.ssh
cp -rf authorized_keys  /home/ansadmin/.ssh

chmod 750 /home/ansadmin
chmod 700 /home/ansadmin/.ssh
chmod 600 /home/ansadmin/.ssh/authorized_keys
chmod 600 /home/ansadmin/.ssh/id_rsa
chmod 644 /home/ansadmin/.ssh/id_rsa.pub
service sshd restart

sudo yum install -y elinks   git

sudo su ansadmin
cd 
sudo chown  -R ansadmin:ansadmin .ssh/
ip a
ssh ansadmin@172.31.71.155 -o StrictHostKeyChecking=no

