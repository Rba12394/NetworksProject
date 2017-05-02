Blake Arledge
CS4283 Final Project


Installation & execution instructions:

1.	Download and I the latest version of Oracle VirtualBox from https://www.virtualbox.org/manual/ch01.html
2.	Install the virtual box extension package
3.	Download and install Vagrant from https://www.vagrantup.com/
4.	Download and install the Vagrant plugin for VirtualBox Guest Additions through the command line call:
 vagrant plugin install vagrant-vbguest
5.	Clone the Networks Project repo
               	git clone https://github.com/Rba12394/NetworksProject.git
6.	Open a shell in the directory containing the Vagrantfile and run 
vagrant up
	Note: this may take a while the first time its run. Vagrant will run the base box, launch the 	virtual machine and install the necessary software
7.	Check to make sure that the default configurations of the virtual machine (found in the Vagrantfile) are compatible with your host machine, and make any changes necessary to the memory and number of cores allocated (note that you will be running 2 of these machines, so be sure that whatever is in the Vagrantfile*2 is still going to be okay)
 If your machine is incapable of running two of these, then you can decrease the memory allocation to an acceptable value.
8.	Once the installation has completed, login to the VM (both username and password are “vagrant”).
9.	Inside the VM, open a terminal and run 
/home/vagrant/clion-2016.3.2/bin/clion.sh
	This will start the installation wizard for CLion
10.	Make sure that CLion will open and run a “hello world” program and then shutdown machine
11.	At this point you will want to go to the VirtualBox console and right click on the virtual machine that you just created, from the drop-down menu you will select “clone”. This will create an exact copy of the machine, so that you the simulation can be run in a completely contained VM environment
12.	Next you will want to group these two VM together, you can do so by right clicking and selecting the “group” option, this will allow for easier internal network setup.
13.	Now that you have 2 identical VMs grouped together, it is time to setup the virtual network that the simulation will be run on. Right-click and execute the following steps (on both machines):
settings>network>Adapter 2>Enable Network Adapter>attach to: internal network>OK
These virtual machines are now set up on an ethernet enabled virtual network, this means that Raw Ethernet packets can be sent from one machine to the other in a completely isolated environment (from this point forward I will forward I will be referring to the two machines as Machine A and Machine B) 
14.	On your host machine, navigate to http://www.tcpdump.org/#latest-releases and download the appropriate version for your computer
15.	Open a console on your host machine and run
sudo tcpdump -nettti enp0s8 ‘(ether dst host 10:00:33:51:01:32)’
This will start tcpdump which will catch all of the packets that is sent out over the tcpsocket
16.	Startup both machines and make sure that the NetworksProject repo is installed on both, if it is not, open a terminal and run
git clone https://github.com/Rba12394/NetworksProject.git
17.	Open up CLion on both machines, on Machine A run the “recv” program by executing the following steps:
a.	Open the “recv” project in CLion
b.	Change the DEST_MAC fields to match the MAC addresses of the machine  
c.	In the console execute:
gcc recvRawEth.c -o recvRawEth
sudo ./recvRawEth enp0s8
18.	On Machine B, the run “send” program by executing the following steps:
a.	Open the “send” project in CLion
b.	Change the DEST_MAC fields to match the destination MAC address
c.	In the console execute:
gcc sendRawEth.c -o sendRawEth
sudo ./sendRawEth enp0s8
19.	Watch the consoles as the packets are sent from Machine B to Machine A, processed, and responded to
