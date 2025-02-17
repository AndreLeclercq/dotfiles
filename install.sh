#!/bin/bash

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored messages
print_message() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Check if running on Arch Linux
if [ ! -f /etc/arch-release ]; then
    print_error "This script is designed for Arch Linux"
    exit 1
fi

# Check if running with sudo
if [ "$EUID" -ne 0 ]; then
    print_error "Please run with sudo"
    exit 1
fi

# Required packages from official repositories
PACKAGES=(
    "i3-wm"
    "alacritty"
    "picom"
    "rofi"
    "thunar"
    "flameshot"
    "feh"
    "networkmanager"
    "pulseaudio"
    "xdg-utils"
    "i3lock"
    "ttf-iosevka-nerd"
    "base-devel"
    "rust"
    "neovim"
)

# Install packages
print_message "Installing required packages..."
pacman -Syu --needed --noconfirm "${PACKAGES[@]}"

if [ $? -eq 0 ]; then
    print_success "Packages installed successfully"
else
    print_error "Failed to install packages"
    exit 1
fi

# Install eww-git from AUR
print_message "Installing eww-git from AUR..."
TEMP_DIR=$(mktemp -d)
cd "$TEMP_DIR"
git clone https://aur.archlinux.org/eww-git.git
cd eww-git
makepkg -si --noconfirm

if [ $? -eq 0 ]; then
    print_success "eww-git installed successfully"
else
    print_error "Failed to install eww-git"
    exit 1
fi

cd "$SCRIPT_DIR"
rm -rf "$TEMP_DIR"

# Create backup directory
if [ "$1" != "--no-backup" ]; then
    BACKUP_DIR="$HOME/.config_backup_$(date +%Y%m%d_%H%M%S)"
    print_message "Creating backup directory at $BACKUP_DIR"
    mkdir -p "$BACKUP_DIR"
fi

# Function to create symlinks
create_symlink() {
    local source="$1"
    local target="$2"
    
    # Check if the source exists
    if [ ! -e "$source" ]; then
        print_error "Source $source does not exist"
        return 1
    }
    
    # Backup existing configuration if it exists
    if [ -e "$target" ]; then
        print_message "Backing up existing $target to $BACKUP_DIR"
        mv "$target" "$BACKUP_DIR/"
    fi
    
    # Create parent directory if it doesn't exist
    mkdir -p "$(dirname "$target")"
    
    # Create symlink
    ln -sf "$source" "$target"
    if [ $? -eq 0 ]; then
        print_success "Created symlink for $target"
    else
        print_error "Failed to create symlink for $target"
        return 1
    fi
}

# Get the directory where the script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Create symlinks for each config directory
print_message "Creating symlinks..."

CONFIG_DIRS=(
    "i3"
    "alacritty"
    "picom"
    "eww"
    "rofi"
    "nvim"
    "wallpapers"
)

for dir in "${CONFIG_DIRS[@]}"; do
    if [ -d "$SCRIPT_DIR/$dir" ]; then
        create_symlink "$SCRIPT_DIR/$dir" "$HOME/.config/$dir"
    fi
done

print_message "Installation complete!"
print_message "Please log out and log back in for changes to take effect"
