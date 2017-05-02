# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  
  
  config.vm.box = "dabhishe/xubuntu_min"

  # The time in seconds that Vagrant will wait for the machine to boot and be accessible. By default this is 300 seconds
  #config.vm.boot_timeout = 300
  # set the host name value
  config.vm.hostname = "cs281spring2017devbox"
 
  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  #config.vm.network "public_network"
  
  #If more than one network interface is available on the host machine, Vagrant will ask you to choose which interface the virtual machine should bridge to. A default interface can be specified by 
  #adding a :bridge clause to the network definition.
  # config.vm.network "public_network", bridge: "en1: Wi-Fi (AirPort)"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  #config.vm.synced_folder "data", "/vagrant_data"
  
  # By default, Vagrant will share your project directory (the directory with the Vagrantfile) to /vagrant.

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider "virtualbox" do |vb|
  	# DIsplay the name of the virtualbox 
  	vb.name = "cs281spring2017devbox"
    vb.gui = true
    vb.customize ["modifyvm", :id, "--memory", "2048"]
    vb.customize ["modifyvm", :id, "--cpus", "2"]   
    vb.customize ["modifyvm", :id, "--accelerate3d", "off"]
    vb.customize ['modifyvm', :id, '--clipboard', 'bidirectional']
    vb.customize ["modifyvm", :id, "--usb", "off"]
    vb.customize ["modifyvm", :id, "--usbehci", "off"]

  end
  
  # Enable provisioning with a shell script. Additional provisioners such as
  # This will call the bootstrap.sh file after the virtual machine boots.
  config.vm.provision "shell", :path => "bootstrap.sh"
end
