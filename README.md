# test-repo

RABBITMQ
- run the files in the folder
- https://www.cloudamqp.com/blog/2015-05-18-part1-rabbitmq-for-beginners-what-is-rabbitmq.html

MAVEN
- install maven 3.5.4 not 3.6
- use mvnvm

DBMDATA
- Put all the new code in a new file in queues folder
- Put the oppsite of the query below #UNDO  
- For release it will get shifted to release folder

VAGRANT
- READ: https://www.vagrantup.com/intro/getting-started/
- FOLLOW: 
- https://docs.google.com/document/d/1cSObaRonpqOX9gv8vCyaIFGqzG-DoD9fEMJTIPkGyr4/edit?ts=5d385613
- copy your local machine's public key to
- Example of Vagrantfile
------------------------------------------------------------------------------------
Vagrant.configure("2") do |config|
config.vm.box = "devint-box-new"
config.vm.box_url = "/Users/gandharv.s/Vagrant/vagrant_package.box"
config.vm.network :private_network, ip: "192.168.33.102"
config.ssh.private_key_path="/Users/gandharv.s/.ssh/id_rsa"
config.vm.synced_folder "/Users/gandharv.s/cap_utils", "/home/vagrant/synced_folder"
      config.vm.provider "virtualbox" do |v|
              v.customize ["modifyvm", :id, "--cpus", 2]
              v.customize ["modifyvm", :id, "--memory", "5000"]
      end
config.vm.define "devint" do |devint|
  end
end
------------------------------------------------------------------------------------
- vagrant 
- http://192.168.33.102:8001/phpmyadmin/index.php?server=1&target=main.php&token=940fcc0940beed5a67a345b44bad847a

THRIFT
- https://blockdev.io/thrift-0-9-3-on-mac-os/
- cd $(brew --repo)
- cd Library/Taps/homebrew/homebrew-core/Formula/
- rm thrift.rb
- copy thrift.rb from the repo in that folder
- brew install thrift
