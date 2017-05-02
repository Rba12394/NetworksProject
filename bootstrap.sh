#!/usr/bin/env bash



vim_func(){

	sudo apt-get install vim -y
}

java_func () {
    sudo apt-get install openjdk-8-jre-headless -y
}

g++_func(){

	sudo apt-get install gcc g++ -y

}
git_svn_func(){

	sudo apt-get install git subversion -y

}
cmake_func(){

	sudo apt-get install cmake -y
}

boost_func(){

	sudo apt-get install libboost-all-dev -y
}



clion_func(){
	sudo wget -q https://download.jetbrains.com/cpp/CLion-2016.3.2.tar.gz
	tar xfz CLion-2016.3.2.tar.gz -C /home/vagrant/ 
}


generate_localkeys () {
     
   sudo -H -u $1  ssh-keygen -N "" -q -f /home/$1/.ssh/id_generated_rsa

}

firefox_func () {
   sudo apt-get install firefox -y
}


vim_func
echo "installed vim"
java_func
echo "installed java"
g++_func
echo "installed g++"
git_svn_func
echo "installed git and svn"
firefox_func
echo "installed firefox"
cmake_func
echo "installed cmake"
boost_func
echo "installed boost libraries"
clion_func
echo "installed clion"

generate_localkeys vagrant
