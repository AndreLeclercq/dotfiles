# Personal Dotfiles

This repository contains my personal configuration files for various applications, including window managers, terminals, and other tools. These configurations are tailored to my specific needs and workflow on Arch Linux. While they might work on other Linux distributions, they have been specifically developed and tested on Arch Linux.

⚠️ **Warning**: Before using these configurations, please review them carefully and make sure you understand what each component does. Blindly copying configuration files could lead to unexpected behavior or break your system.

## Prerequisites

### Required Applications

- i3-wm (Window Manager)
- Alacritty (Terminal Emulator)
- Picom (Compositor)
- Eww (Widget System)
- Rofi (Application Launcher)
- Thunar (File Manager)
- Flameshot (Screenshot Tool)
- Feh (Image Viewer/Wallpaper Manager)
- NetworkManager
- PulseAudio
- XDG-autostart
- i3lock

### Required Fonts

- IosevkaNerdFontMono (Primary font for window titles)

## Display Configuration

The setup is configured for a multi-monitor environment with specific orientations:
- DP-4: Inverted rotation
- DP-2: Inverted rotation
- HDMI-0: Default rotation

## Keyboard Shortcuts

### System Control

| Shortcut | Action |
|----------|---------|
| `$mod+Shift+c` | Reload i3 configuration |
| `$mod+Shift+r` | Restart i3 |
| `$mod+Shift+e` | Exit i3 |

### Applications

| Shortcut | Action |
|----------|---------|
| `$mod+Return` | Open Alacritty terminal |
| `$mod+d` | Launch dmenu |
| `$mod+s` | Launch Rofi |
| `$mod+e` | Open Thunar file manager |
| `$mod+p` | Launch Flameshot screenshot tool |

### Window Management

| Shortcut | Action |
|----------|---------|
| `$mod+q` | Kill focused window |
| `$mod+f` | Toggle fullscreen |
| `$mod+h` | Split horizontally |
| `$mod+v` | Split vertically |
| `$mod+t` | Toggle split layout |
| `$mod+Shift+space` | Toggle floating mode |
| `$mod+space` | Toggle focus between tiling/floating windows |

### Navigation

| Shortcut | Action |
|----------|---------|
| `$mod+j/k/l/m` | Focus left/down/up/right |
| `$mod+Shift+j/k/l/m` | Move window left/down/up/right |
| `$mod+[1-0]` | Switch to workspace 1-10 |
| `$mod+Shift+[1-0]` | Move container to workspace 1-10 |

### Resize Mode (`$mod+r`)

| Shortcut | Action |
|----------|---------|
| `j` or `Left` | Shrink width |
| `k` or `Down` | Grow height |
| `l` or `Up` | Shrink height |
| `m` or `Right` | Grow width |

## Additional Features

- Gaps configuration: 10px inner gaps, 40px top gap
- No window borders (pixel 0)
- Focus doesn't follow mouse
- Automatic wallpaper randomization using Feh
- Custom Picom compositor configuration
- Eww bars configuration for three monitors
- Custom color scheme implementation

## Installation

1. Clone the repository:
```bash
git clone https://github.com/AndreLeclercq/dotfiles.git
cd dotfiles
```

2. Make the installation script executable:
```bash
chmod +x install.sh
```

3. Run the installation script:
```bash
sudo ./install.sh
sudo ./install.sh --no-backup # Skip backup
```

The script will:
- Install all required packages from official repositories
- Install eww-git from AUR
- Create backups of your existing configurations
- Create symlinks in your ~/.config directory

4. Log out and log back in for changes to take effect
