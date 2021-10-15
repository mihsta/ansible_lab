git pull
ansible-playbook pb_vsftpd.yml -v $1 $2
curl -T ansible.cfg ftp://node1/pub/upload/ansible.cfg --user anonymous:password
curl -T ansible.cfg ftp://node2/pub/upload/ansible.cfg --user anonymous:password