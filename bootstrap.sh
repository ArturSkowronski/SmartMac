#!/bin/bash

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

# Download and install git
if [[ ! -x /usr/local/bin/git ]]; then
    echo "Info   | Install   | git"
    brew install git
fi

# Download and install python
if [[ ! -x /usr/local/bin/python ]]; then
    echo "Info   | Install   | python"
    brew install python --framework --with-brewed-openssl
fi

# Download and install Ansible
if [[ ! -x /usr/local/bin/ansible ]]; then
    brew install ansible
fi

if [[ ! -x /usr/local/bin/ruby ]]; then
    brew install ruby
fi

ansible-playbook main.yml --ask-sudo-pass

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
                                                       
                                                                   
                                                                   
                                                                   
                                                                   
                                                                   
                                                                   
                                                                   
                                                                   
                                                                   


