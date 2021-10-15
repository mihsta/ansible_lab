git pull
ansible-playbook pb_vsftpd.yml -v $1 $2 > ansible.log

NOW=`'%F_%H:%M:%S'`

curl -T ansible.log ftp://node1/upload/ansible_$NOW.log --user anonymous:password
curl -T ansible.log ftp://node2/upload/ansible_$NOW.log --user anonymous:password