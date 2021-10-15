### how to use:
>on control node: install ansible-galaxy collection install ansible.posix

> bash play.sh

sudo yum -y ftp
ftp node1
anonymous
password
cd pub
get README

sestatus -v -b
setsebool -P allow_ftpd_anon_write  on

### The task03.2 description: 
    - Write a role that installs and enables FTP (vsftpd package), opens the necessary ports. 
    - Define the required ftp server configuration parameters and use them in the template for the vsftpd.conf configuration file:
    - allowed anonymous access to the / var / ftp / pub folder and upload files in the / var / ftp / pub / upload folder;
    - the required permission and the corresponding SELinux are configured: "ftpd_anon_write" boolean value "on" (edited).