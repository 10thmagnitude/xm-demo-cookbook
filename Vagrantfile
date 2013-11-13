# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  config.vm.hostname = "xm-demo-cookbook-berkshelf"

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "vagrant-win2k8r2"
  config.vm.guest = :windows

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  #config.vm.box_url = "https://dl.dropboxusercontent.com/u/2105139/vagrant/win2k8r2.box"
  config.vm.box_url = "/Users/mstratton/src/windows2008R2/win2k8r2.box"
  # Assign this VM to a host-only network IP, allowing you to access it
  # via the IP. Host-only networks can talk to the host machine as well as
  # any other machines on the same network, but cannot be accessed (through this
  # network interface) by any external networks.
  config.vm.network :private_network, ip: "33.33.33.10"

  # Port forward WinRM and RDP
  config.vm.network :forwarded_port, guest: 3389, host: 3389
  config.vm.network :forwarded_port, guest: 5985, host: 5985

  # Windows stuff

  # Max time to wait for the guest to shutdown
  config.windows.halt_timeout = 25

  # Admin user name and password
  config.winrm.username = "vagrant"
  config.winrm.password = "vagrant"
  
# stuff for vmware
# don't forget to set the provider first up vagrant up --provider vmware_fusion
config.vm.provider :vmware_fusion do |v| 
  v.vmx["memsize"] = "2048" 
  v.gui = true
end  

# vbox specifics
config.vm.provider "virtualbox" do |v|
  v.gui = true
end
config.vm.boot_timeout = 120

  # Enabling the Berkshelf plugin. To enable this globally, add this configuration
  # option to your ~/.vagrant.d/Vagrantfile file
  config.berkshelf.enabled = true


  config.vm.provision :chef_solo do |chef|
     chef.json = {
        :windows_users => {
          :admin_password => 'rootpass',
          :apppool_password => 'poolpass'

        }
      }

    chef.run_list = [
      "recipe[xm-demo-cookbook]",
      "recipe[xm-demo-cookbook::baseos]",
      "recipe[xm-demo-cookbook::msmq]",
      "recipe[xm-demo-cookbook::webserver]",
      "minitest-handler"
      
    ]
  end
end

