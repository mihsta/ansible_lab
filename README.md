# ansible_lab
  ## user ansible ssh gen & copy
    su ansible  
    password  
    ssh-keygen -q -N "" -f /home/ansible/.ssh/id_rsa <<<y >/dev/null 2>&1  
    sudo ssh-copy-id -i /home/ansible/.ssh/id_rsa.pub ansible@node1.example.com -f  
    sudo ssh-copy-id -i /home/ansible/.ssh/id_rsa.pub ansible@node2.example.com -f  

# vagrant commands
  vagrant init hashicorp/bionic64  
  vagrant up  
  vagrant reload  
  vagrant provision  
  vagrant ssh 'NAME'  
  vagrant halt  
  vagrant suspend  
  vagrant destroy  
  vagrant box list
# git commands
  git log --all --oneline --graph --decorate  
  git checkout env  
  git checkout main  