# My Fedora + Hyprland Rice
<img width="1920" height="1079" alt="image" src="https://github.com/user-attachments/assets/8ecdbaa7-549c-4f5d-9824-f6c058aa1dc6" />

<img width="1921" height="1079" alt="image" src="https://github.com/user-attachments/assets/c6e10f5d-be8b-4671-a3ab-b5c96af61942" />

<img width="1921" height="1081" alt="image" src="https://github.com/user-attachments/assets/07e3ed7a-4999-43a8-91d0-d9fff5283e17" />

## ⚠️ Read This! 
These instructions are customized for my system and therefore may or may not work depending on your case. **They are NOT thoroughly tested** and are more of an outline to guide me when I need to format my machine.

## Instructions

Using **Fedora Workstation (GNOME-based)** as the starting point.

1. Install required packages:
   ```
   sudo dnf install waybar mako foot micro rofi fastfetch zsh mate-polkit wl-clipboard pavucontrol blueman fzf swaybg sddm pass
   ```
2. Get dotfiles:
   ```
   git clone https://github.com/pedrodellolio/dotfiles.git
   ```
    Move dotfiles folders to `.config`. Exceptions: `.zshrc -> $HOME`; `cliphist-rofi-img -> /usr/local/bin`
3. Install oh-my-zsh:
   ```
   sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
   ```
4. Install cliphist:
   Go to [Cliphist Releases](https://github.com/sentriz/cliphist/releases) and get the latest release URL
   ```
   wget [LATEST_RELEASE_URL]
   ```
   ```
    sudo mv v0.6.1-linux-amd64 /usr/local/bin/cliphist
    chmod +x /usr/local/bin/cliphist
    sudo cp dotfiles/cliphist-rofi-img /usr/local/bin
    sudo chmod +x /usr/local/bin/cliphist-rofi-img
   ```
5. Setup SDDM
   ```
   sudo systemctl enable sddm.service --force`
   sudo systemctl disable gdm.service
   ```
   Install a theme from https://store.kde.org

   Move the theme to /usr/share/sddm/themes

   Edit `/etc/sddm.conf` to apply the chosen theme
6. Setup A2DP profile for bluetooth headphones (like JBL handsfree):

   Connect device using blueman: `Right Click -> Audio Profile`
   
7. Storing Git Personal Access Token:

    https://github.com/git-ecosystem/git-credential-manager/blob/main/docs/credstores.md

8. GTK Theme
   
   https://github.com/Fausto-Korpsvart/Gruvbox-GTK-Theme
