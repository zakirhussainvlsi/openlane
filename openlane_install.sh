echo
echo
echo
echo "************************************************************************************************"
echo "                            WelCome to Opensource Installation                                  "
echo "                                   Installation script                                          "
echo
echo "                                          By                                                    "
echo
echo "                                    Vision-VLSI Pvt. Ltd.                                       "
echo "                              We offer Training in VLSI Domain                                  "
echo
echo "                                   Contact at +919949426362                                     "
echo "************************************************************************************************"
echo
echo
echo
echo "************************************************************************************************"
echo "                                     Installation Begins                                        "
echo "************************************************************************************************"
echo
echo
echo
echo "******************************************** Magic Installation **********************************"
cd
cd
cd
echo
echo
echo "*********************************  Installing Magic dependancies   ********************************"
echo
echo
sudo apt-get update
sudo apt-get install m4 --assume-yes
sudo apt-get install tcsh --assume-yes
sudo apt-get install csh --assume-yes
sudo apt-get install libx11-dev --assume-yes
sudo apt-get install tcl-dev tk-dev --assume-yes
sudo apt-get install libcairo2-dev --assume-yes
sudo apt-get install mesa-common-dev libglu1-mesa-dev --assume-yes
sudo apt-get install libncurses-dev --assume-yes
##sudo apt install git --assume-yes
cd 
echo
echo
echo "****************************** Cloning magic and will start installation of magic*********************"
echo
echo
cd
git clone https://github.com/RTimothyEdwards/magic.git
cd magic
./configure 
sudo make
sudo make install
cd
echo
echo
echo "*************************  yosys – Yosys Open SYnthesis Suite - Installation  **************************"
echo "*****************************  Installing yosys dependancies   ********************************"
echo
echo
sudo apt-get install build-essential clang bison flex \
	libreadline-dev gawk tcl-dev libffi-dev git \
	graphviz xdot pkg-config python3 libboost-system-dev \
	libboost-python-dev libboost-filesystem-dev zlib1g-dev --assume-yes
	
cd
echo
echo
echo "***************************** Cloning yosys and will start installation of yosys *********************"
echo
echo
cd
cd
git clone https://github.com/YosysHQ/yosys.git
cd yosys
sudo make
sudo make install
cd
cd
echo "******************************* Docker installation *************************************"
cd 
echo
echo
echo "*****************************************  Installing Docker  **********************************"
echo
echo
cd
sudo apt-get remove docker docker-engine docker.io containerd runc --assume-yes
sudo apt-get update --assume-yes
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release --assume-yes
    
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg --yes
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update --assume-yes
sudo apt-get install docker-ce docker-ce-cli containerd.io --assume-yes

cd 
echo
echo
echo "******************************** Cloning OpenLane and will start installation of openlane  *******************************"
echo
echo
git clone https://github.com/The-OpenROAD-Project/OpenLane.git
cd OpenLane
sudo make openlane
    # Default PDK_ROOT is $(pwd)/pdks. If you want to install the PDK at a differnt location, #uncomment the next line.
    #export PDK_ROOT=<absolute path to where skywater-pdk and open_pdks will reside>
sudo make pdk
sudo make test # This is to test that the flow and the pdk were properly installed

echo "********************************************* openSTA installation *********************************************"
cd 
echo
echo
echo "********************************** Cloning OpenSTA and will start installation of OpenSTA ********************"
echo
echo
git clone https://github.com/The-OpenROAD-Project/OpenSTA.git
cd OpenSTA
mkdir build
cd build
sudo apt  install cmake --assume-yes
sudo apt-get update -y --assume-yes
sudo apt-get install -y swig --assume-yes
cmake ..
sudo make
sudo make install
cd 
echo
echo
##Install Icarus iverilog
echo "*****************************************  Installing iverilog ***********************************************"
echo
echo
sudo apt-get install -y iverilog --assume-yes
echo "****************************************** Installing gtkwave ********************************************"
echo
echo
sudo apt install gtkwave --assume-yes
echo "************************************************ Installing klayout ******************************************"
echo
echo
sudo apt install klayout --assume-yes
echo
cd
cd
echo "**************************************************************************************"
echo "                             Installation Completed                                   "
echo "**************************************************************************************"
echo
echo
echo
echo
echo
echo
