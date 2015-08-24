#!/bin/bash

now=$(date +"%T")

echo "Current time : $now"

echo "███████╗███╗   ███╗ █████╗ ██████╗ ████████╗███╗   ███╗ █████╗  ██████╗";
echo "██╔════╝████╗ ████║██╔══██╗██╔══██╗╚══██╔══╝████╗ ████║██╔══██╗██╔════╝";
echo "███████╗██╔████╔██║███████║██████╔╝   ██║   ██╔████╔██║███████║██║     ";
echo "╚════██║██║╚██╔╝██║██╔══██║██╔══██╗   ██║   ██║╚██╔╝██║██╔══██║██║     ";
echo "███████║██║ ╚═╝ ██║██║  ██║██║  ██║   ██║   ██║ ╚═╝ ██║██║  ██║╚██████╗";
echo "╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝";
echo "                                                                       ";
echo "Instant Development Environment by SmartRecruiters                     ";
echo "                                                                       ";
                                                    
set -e

# Download and install Command Line Tools with a checking heuristic
if [[ $(/usr/bin/gcc 2>&1) =~ "no developer tools were found" ]] || [[ ! -x /usr/bin/gcc ]]; then
    echo "Info   | Install   | xcode"
    xcode-select --install
fi

# Download and install Homebrew
if [[ ! -x /usr/local/bin/brew ]]; then
    echo "Info   | Install   | homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo "Info   | Update   | brew"
	brew update
fi

# Modify the PATH
export PATH=/usr/local/bin:$PATH

# Download and install python
if [[ ! -x /usr/local/bin/python ]]; then
    echo "Info   | Install   | python"
    brew install python --framework --with-brewed-openssl
fi

# Download and install Ansible
if [[ ! -x /usr/local/bin/ansible ]]; then
    brew install ansible
fi

curl -s get.gvmtool.net | bash

ansible-playbook main.yml --ask-sudo-pass
docker-machine create --driver virtualbox srdev

source "/Users/arturskowronski/.gvm/bin/gvm-init.sh"
gvm install gradle 2.6 

echo "Your environment is ready. It was a pleasure !            ";
echo "                                                          ";                                                                                                                               
echo "                           **********                     ";       
echo "                        ****************                  ";      
echo "                     **********************               ";
echo "                   **************************             ";  
echo "                  **********        **********            ";  
echo "                 *********           **********           ";  
echo "                *********     ****     *********          "; 
echo "               **********    ******    **********         "; 
echo "               **********     *******************         "; 
echo "               ***********            ***********         ";
echo "               ********************    **********         ";
echo "                ********************    ********          ";
echo "                 ********     *****    ********           ";
echo "                  ********             *******            ";
echo "                   *********        *********             ";
echo "                    ************************              ";
echo "                     *********************                ";
echo "                      *******************                 ";
echo "                        ***************                   ";
echo "                         *************                    ";
echo "                          ***********                     ";
echo "                          ***********                     ";
echo "                           *********                      ";
echo "                            *******                       ";
now=$(date +"%T")


eval "$(docker-machine env dev)"

echo "Current time : $now"

# echo "  Easter Egg seals are happy                                           ";
# echo "          (\/ )        _  _         ( \/)                              ";
# echo "           \  |       ( \/ )        |  /                               ";
# echo "            ) |        \  /         | (                                ";
# echo "           /  \         \/         /   \                               ";   
# echo "         ,-    \       /  \       /    -,                              ";
# echo "        /6 6    \     / _  \     /     a a                             ";
# echo "     &/(_x_ ),_/.)   / 6 6  \   (.\_,( _x_)-/}                         ";
# echo "                  .-*>(_x_)< .-*                                       ";
# echo "                                                                       ";   
                                                       
                                                                   
                                                                   
                                                                   
                                                                   
                                                                   
                                                                   
                                                                   
                                                                   
                                                                   


