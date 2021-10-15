git pull
ansible-playbook pb_vsftpd.yml -v $1 $2 > ansible.log
NOW=`%F_%H:%M:%S`
echo 'Upload file ansible no node1 log with datetime: '+$NOW
curl -T ansible.log ftp://node1/upload/ansible_$NOW.log --user anonymous:password
echo 'List files uploaded to node1'
curl -s -u anonymous:password ftp://node1/upload/
echo 'Upload file ansible to node2 log with datetime: '+$NOW
curl -T ansible.log ftp://node2/upload/ansible_$NOW.log --user anonymous:password
echo 'List files uploaded to node2'
curl -s -u anonymous:password ftp://node2/upload/