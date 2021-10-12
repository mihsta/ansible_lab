# ansible_lab_env
  ## user ansible ssh gen & copy
    su ansible  
    password  
    ssh-keygen -q -N "" -f /home/ansible/.ssh/id_rsa <<<y >/dev/null 2>&1  
    sudo ssh-copy-id -i /home/ansible/.ssh/id_rsa.pub ansible@node1.example.com -f  
    sudo ssh-copy-id -i /home/ansible/.ssh/id_rsa.pub ansible@node2.example.com -f  
    
    ssh-keygen
    ssh-copy-id node1 && ssh-copy-id node2
    cd /home/ansible/
## ansible commands  
    ansible --version
    ansible all -i inventory --list-hosts -v
    nano /etc/ansible/ansible.cfg
    ansible -m ping all
    ansible-doc -l
    ansible-doc package
    ansible-doc -s package
    ansible-playbook -v playbook.yml
## regex
    https://regex101.com/
    https://question-it.com/questions/2028065/ansible-lineinfile-izmenit-stroku      
## vagrant commands
    vagrant init hashicorp/bionic64  
    vagrant up  
    vagrant reload  
    vagrant provision  
    vagrant ssh 'NAME'  
    vagrant halt  
    vagrant suspend  
    vagrant destroy  
    vagrant box list
## git commands
    ssh -vT git@github.com
    git clone git@github.com:mihsta/ansible_lab.git 
    git remote set-url origin git@github.com:mihsta/ansible_lab.git   
    git log --all --oneline --graph --decorate  
    git checkout env  
    git checkout main  
    git tag
    git push --tags

    
    