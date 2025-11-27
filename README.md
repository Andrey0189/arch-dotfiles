# My Gruvbox Themed Arch Linux Dotfiles 🎨

![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![Arch](https://img.shields.io/badge/Arch%20Linux-1793D1?style=for-the-badge&logo=arch-linux&logoColor=white)
![Wayland](https://img.shields.io/badge/Wayland-000000?style=for-the-badge&logo=wayland&logoColor=white)
![Hyprland](https://img.shields.io/badge/Hyprland-00add8?style=for-the-badge)

![screenshot](./screenshot.png)

A collection of my personal dotfiles for a consistent and beautiful Gruvbox-themed experience on Arch Linux with the Hyprland compositor.

## 🚀 Installation

1.  Clone the repository:
    ```bash
    git clone https://github.com/Andrey0189/arch-dotfiles
    cd arch-dotfiles
    ```
2.  Run the installation script:
    ```bash
    ./install.sh
    ```

    > **Note:** You must install the Tmux Plugin Manager manually:
    > ```bash
    > mkdir -p ~/.config/tmux/plugins && git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
    > ```

The script will back up your existing configuration files to `~/.config/filename.bak` and `~/.zshrc.bak` before copying the new files.

## 🖼️ Window Manager: Hyprland

[Hyprland](https://hyprland.org/) is a dynamic tiling Wayland compositor that doesn't sacrifice on looks. ✨

### Keybindings ⌨️

| Keybinding            | Description                                     |
| :-------------------- | :---------------------------------------------- |
| `Super + Shift + Return` | Open terminal                                |
| `Super + Shift + C`   | Kill active window                              |
| `Super + Shift + Q`   | Exit Hyprland                                   |
| `Super + R`           | Open file manager (`ranger`)                    |
| `Super + F`           | Toggle floating                                 |
| `Super + Shift + F`   | Toggle fullscreen                               |
| `Super + D`           | Open application menu (`fuzzel`)                |
| `Super + Shift + P`   | Pin window                                      |
| `Super + J`           | Toggle split                                    |
| `Super + E`           | Open emoji picker (`bemoji`)                    |
| `Super + V`           | Open clipboard history (`cliphist`)             |
| `Super + B`           | Reload Waybar config                            |
| `Super + Shift + B`   | Toggle Waybar visibility                        |
| `Super + L`           | Lock screen (`hyprlock`)                        |
| `Super + P`           | Launch hyprpicker                               |
| `Super + N`           | Open notification center (`swaync`)             |
| `Super + Shift + O`   | Pass key to OBS                                 |
| `Print`               | Take screenshot (`grimblast`)                   |
| `Super + (←,→,↑,↓)`   | Move focus                                      |
| `Super + Shift + (←,→,↑,↓)` | Swap window                               |
| `Super + Ctrl + (←,→,↑,↓)`  | Resize window                             |
| `Super + [1-9]`       | Switch to workspace                             |
| `Super + Shift + [1-9]` | Move window to workspace                      |
| `Super + S`           | Toggle special workspace                        |
| `Super + Shift + S`   | Move window to special workspace                |
| `Volume Up`           | Increase volume                                 |
| `Volume Down`         | Decrease volume                                 |
| `Mute`                | Mute audio                                      |
| `Mic Mute`            | Mute microphone                                 |
| `Super + ]`           | Increase brightness                             |
| `Super + [`           | Decrease brightness                             |
| `Super + Mouse`       | Move/Resize window                              |

## 🐚 Shell

### Zsh ⚡

- `.zshrc` configured for an enhanced interactive experience.
- `autocd`, `correct` options for convenience.
- Useful aliases like `ls='eza --icons always'` and `v='nvim'`.
- FZF integration with `fd` for fast file and directory searching.

### Starship Prompt 🚀

- A minimal, blazing-fast, and infinitely customizable prompt for any shell.
- Shows username, hostname and other useful stuff, like Python version in your current environment.

## 💻 Multiplexer: Tmux

[Tmux](https://github.com/tmux/tmux/wiki) is a terminal multiplexer.

### Keybindings ⌨️

| Keybinding            | Description                                     |
| :-------------------- | :---------------------------------------------- |
| `Alt + r`             | Reload config                                   |
| `Alt + s`             | Choose session/window tree                      |
| `Alt + [1-9]`         | Select window                                   |
| `Alt + (←,→,↑,↓)`     | Select pane                                     |
| `Alt + Shift + (←,→,↑,↓)` | Resize pane                                 |
| `Alt + h`             | Split window vertically                         |
| `Alt + v`             | Split window horizontally                       |
| `Alt + Enter`         | New window                                      |
| `Alt + c`             | Kill pane                                       |
| `Alt + q`             | Kill window                                     |
| `Alt + d`             | Detach                                          |
| `Alt + Q`             | Kill session                                    |
| `Alt + /`             | Search forward                                  |
| `Alt + ?`             | Search backward                                 |

## 🖥️ Applications configured

- 🚄 **[Alacritty](https://alacritty.org/):** A fast, GPU-accelerated terminal emulator with a Gruvbox theme and JetBrains Mono font.
- 📊 **[Waybar](https://github.com/Alexays/Waybar):** A highly customizable Wayland bar with Gruvbox themed modules.
- 📨 **[Swaync](https://github.com/ErikReider/SwayNotificationCenter):** A simple notification daemon for Wayland, themed with Gruvbox.
- 🔒 **[Hyprlock](https://hyprland.org/docs/ecosystem/hyprlock/):** The official screen locker for Hyprland, showing a blurred background and the current time.
- 📁 **[Ranger](https://github.com/ranger/ranger):** A console file manager with VI key bindings and image previews.
- 💤 **[Lazygit](https://github.com/jesseduffield/lazygit):** A simple terminal UI for git commands.
- 📖 **[Zathura](https://pwmt.org/projects/zathura/):** A highly customizable document viewer with VI-like keybindings and a Gruvbox theme.
- 🦇 **[Bat](https://github.com/sharkdp/bat):** A `cat(1)` clone with wings, using the `gruvbox-dark` theme for syntax highlighting.

