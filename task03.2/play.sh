git pull
ansible-playbook pb_vsftpd.yml -v $1 $2 > ansible.log
echo 'Upload file ansible no node1
curl -T ansible.log ftp://node1/upload/ansible_$RANDOM.log --user anonymous:password
echo 'List files uploaded to node1'
curl -s -u anonymous:password ftp://node1/upload/
echo 'Upload file ansible to node2'
curl -T ansible.log ftp://node2/upload/ansible_$RANDOM.log --user anonymous:password
echo 'List files uploaded to node2'
curl -s -u anonymous:password ftp://node2/upload/