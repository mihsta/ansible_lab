git pull
ansible-playbook pb_vsftpd.yml -v $1 $2

NOW=`'%F_%H:%M:%S'`

curl -T /home/ansible/ansible_lab/task03.2/ansible.cfg ftp://node1/pub/upload/ansible_$NOW.cfg --user anonymous:password
curl -T /home/ansible/ansible_lab/task03.2/ansible.cfg ftp://node2/pub/upload/ansible_$NOW.cfg --user anonymous:password