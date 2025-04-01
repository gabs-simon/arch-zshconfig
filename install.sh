# Automatic installation script
# Assumes it's running as root in a clean installation of Arch
# Copy and paste this code, and then run `setup_main $username $password`
setup_package_manager(){
    pacman -Syyu
}

install_git(){
    pacman -S git
}

install_everything(){
    pacman -S sudo git gcc make cmake zsh starship neovim zoxide lsd which python-pip thefuck tmux
}

setup_main() {
    local username="$1"
    local password="$2"

    # Check if the script is being run as root
    if [ "$(id -u)" -ne 0 ]; then
        echo "This script must be run as root" >&2
        return 1
    fi

    # Check if username and password are provided
    if [ -z "$username" ] || [ -z "$password" ]; then
        echo "Usage: setup_main <username> <password>" >&2
        return 1
    fi

    # Install all required tools
    install_everything
    echo "Installed all base requirements"

    # Create the user with a home directory and set the shell to /usr/bin/zsh
    useradd -m -s /usr/bin/zsh "$username"
    echo "$username:$password" | chpasswd

    # Sets up sudo access for this user
    sed -i 's/^# %wheel ALL=(ALL:ALL) ALL/%wheel ALL=(ALL:ALL) ALL/' /etc/sudoers
    usermod -aG wheel "$username"

    # Download the arch-zsh repo
    git clone https://github.com/gabs-simon/arch-zshconfig.git "/home/$username/arch-zshconfig"
    mv "/home/$username/arch-zshconfig" "/home/$username/.config"
    echo "source /home/$username/.config/zsh/main.sh" > "/home/$username/.zshrc" 

    # Sets up tmux
    git clone https://github.com/tmux-plugins/tpm "/home/$username/.tmux/plugins/tpm"

    # chowns everything in the user folder to the user
    chown "$username:$username" "/home/$username" -R

    return 0
}

setup_package_manager
install_git
