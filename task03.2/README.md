### how to use:

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

anonymous_enable=True
anon_upload_enable=True
anon_root=/var/ftp/pub
anon_mkdir_write_enable=YES
write_enable=YES
local_enable=True
dirmessage_enable=YES
xferlog_enable=YES
log_ftp_protocol=YES
local_umask=022
anon_umask=022
connect_from_port_20=YES
pam_service_name=YES
userlist_enable=YES

#my IP address = 10.0.2.15

anonymous_enable=YES
local_enable=NO
write_enable=YES
local_umask=022
anon_umask=022
anon_upload_enable=YES
dirmessage_enable=YES
xferlog_enable=YES
connect_from_port_20=YES
xferlog_std_format=YES
listen=YES
listen_ipv6=NO
pam_service_name=vsftpd
userlist_enable=YES
anon_root=/var/ftp/pub
anon_other_write_enable=YES
hide_ids=YES
pasv_min_port=40000
pasv_max_port=50000