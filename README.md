# My i3wm dotfiles

---

# I have no idea if it will work on your PC/Laptop (because of dependencies🥀)

I used [GNU Stow](https://github.com/aspiers/stow) to manage all my dotfiles

---

<img width="1919" height="1079" alt="dskp" src="https://github.com/user-attachments/assets/d234fa60-3a41-43ac-924a-71ff5b57a4b7" />

## Dependencies (arch btw)

`sudo pacman -S stow rofi dunst  fastfetch  flameshot  kitty  picom  quickshell  rofi  thunar feh autotiling lxappearance`

`yay -S rofi-greenclip`

## For me

`sudo pacman -S telegram-desktop steam prismlauncher zerotier-one gimp libvlc libreoffice-still` 

`yay -S logseq-desktop-bin equibop-bin`

## Installation 

1) Clone the repo:

`git clone https://github.com/NegNus/i3wm-Dotfiles.git`

2) nagivate to the directory:
3) 
`cd i3wm-Dotfiles/stew/`

4) Apply configs:

`stow -t ~ *`

5 )After installation: 

`mod + shift + e` to restart everything

If you want to delete symlinks(roll back 4th step) :

run this --> `stow -Dt ~ *` command in `i3wm-Dotfiles/stew` directory

## Some avaible configurations:

### Bar config: 

[Quickshell Config](stew/quickshell/.config/quickshell/Config.qml) - file for the top bar (It kinda chopped)

[Theme Config](stew/quickshell/.config/quickshell/bar/Theme.qml) - Colors for the top bar

You can also execute commands by clicking these buttons <img width="53" height="35" alt="image" src="https://github.com/user-attachments/assets/76761b8b-3127-4e5c-a032-f4647025e8f5" /> , <img width="52" height="35" alt="image" src="https://github.com/user-attachments/assets/ee477677-5e59-47f6-9915-ff8a8c71a635" />

[arch logo button](stew/quickshell/.config/quickshell/bar/Moduless/Workspaces.qml) -  43th line

[fire button](stew/quickshell/.config/quickshell/bar/Moduless/Tray.qml) - 38th line

## Shortcuts
`mod + q` kill window

`mod + 1-9` go to workspace 1-9

`mod + shift + 1-9` go to workspace 1-9 with focused window

`mod + x` - terminal(kitty)

`mod + d` - rofi

`mod + p` - on/off picom(compositor/vsync)

`mod + shift + o` - on/off top bar

`mod + shift + s` - screenshot

`mod + shift + v` - make window floating

`mod + v` - greenclip

`mod + m` - logseq

`mod + f` - firefox
