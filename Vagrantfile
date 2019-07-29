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
