#!/bin/bash

sudo useradd -m -s /bin/bash ansible
echo 'ansible ALL=(ALL:ALL) NOPASSWD:ALL' | sudo tee -a /etc/sudoers
sudo runuser -l ansible -c 'mkdir /home/ansible/.ssh'
sudo runuser -l ansible -c 'chmod 700 /home/ansible/.ssh'
sudo runuser -l ansible -c "echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDjn96Jf9m8ECBaf7OhrnRwHZAKw04/DWDa8X/HAc2pIeVZI4g902HaXdxGFlvZ7xXroFMp2IAfTVtnNuzLrQjZ05QKbqfbEecaWNrJiSBV1BbOxKVUmATnLejjG8dlIEJQmxPbugv3+0gGRdZv2a047w1B50abvic9cokA/DlP/j5VyOler2gS8CGHkbD2QMfV41g1dL4M8ZXv5Z3Z8uFcRXS9EUVrt1JHAS64qiHCHVMpgNR9k6KEFap0NvFxG54lj9I48I5+P5txnNiTVV0ClJ+AKofBlpDG+QeL2tO5WUX08clAZt/KBhiGn3lcXK5ONJX/javPS5mcCUlnSLNF ansible' > /home/ansible/.ssh/authorized_keys"
sudo runuser -l ansible -c 'chmod 600 /home/ansible/.ssh/authorized_keys'
