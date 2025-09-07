# Instructions
1. Install required packages:

   `sudo dnf install waybar mako foot micro rofi fastfetch zsh mate-polkit wl-clipboard pavucontrol blueman fzf swaybg sddm pass`

2. Get dotfiles:

   `git clone https://github.com/pedrodellolio/dotfiles.git`
   
    Move dotfiles folders to `.config`. Exceptions: `.zshrc -> $HOME`; `cliphist-rofi-img -> /usr/local/bin`

3. Install oh-my-zsh:
   
   `sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"`

4. Install cliphist:

   Go to https://github.com/sentriz/cliphist/releases and get the latest release URL

   `wget LATEST_RELEASE_URL`
   
    `sudo mv v0.6.1-linux-amd64 /usr/local/bin/cliphist`
   
    `chmod +x /usr/local/bin/cliphist`
   
    `sudo cp dotfiles/cliphist-rofi-img /usr/local/bin`
   
    `sudo chmod +x /usr/local/bin/cliphist-rofi-img`
5. Setup SDDM

     `sudo systemctl enable sddm.service --force`
   
      `sudo systemctl disable gdm.service` (if GNOME)

      Install a theme from https://store.kde.org

      Move the theme to /usr/share/sddm/themes

      Edit `/etc/sddm.conf` to apply the chosen theme
   
7. Setup A2DP profile for bluetooth headphones (like JBL handsfree):

   Connect device using blueman: `Right Click -> Audio Profile`
   
8. Storing Git Personal Access Token:

    https://github.com/git-ecosystem/git-credential-manager/blob/main/docs/credstores.md
