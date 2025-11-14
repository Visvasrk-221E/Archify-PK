# Archify-PK

**--By Visvasrk**
**--Release Version 1**
**--Child-Of : auto-bspwm for kali : https://github.com/r1vs3c/auto-bspwm by r1vs3c**

> This is a bash script that automates the process of setting up a hacking environment, fast reliable with less additional overheads and stops heavy dependencies for xfce or mate desktop environment. This is built on top of mate DE, but using bspwm window manager to rice a completely new arch and kali blended feel for the users using the tiled window manager [bspwm](https://github.com/baskerville/bspwm).

## Note
> The configuration is done for parrot linux and is defaulted to its applications in the configuration file. If your are in another debian based distro like kali or ubuntu, you might have to edit the setup.sh and install the correct name of the dependencies as per the requirements of your current distro. *Currently, this is for Parrot Security OS*

## Installation
1. Install available updates.
*Note : Parrot ships with backports enabled by default. Before updating, you have to disable the backports to maintain ONLY STABLE releases and to stop 'bpo~' dependencies from conflicting with stable versions.*

```shell
sudo apt update
sudo apt upgrade -y
```

2. Clone the repository and navigate to it.

*Recommended to start it from the home directory. It would be easy for you to manage the files.*

```shell
git clone https://github.com/Visvasrk-221E/Archify-PK.git
cd Archify-PK
```

3. Grant execution permissions to the script.

```shell
chmod +x setup.sh
```

4. Execute the script.

```shell
./setup.sh
```

5. After the script has finished, you will be prompted to restart the system. Once you have rebooted, select `bspwm` as the window manager and then log in.
6. You are free to open up an issue or contact the email address in my webpage. This is a personal edit, combining configurations of several others into a single DE for parrot os. Would be useful for those who need a Kali + Arch feel with parrot's anonymity.
7. Provide this project a star if you think that the setup is good and if you are willing to contribute to the **Parrot Ricing and Minimalism**, you are free to fork this repository and deploy it after sharing with me. It would be helpful for me for the further development and compiling ideas into something more asthetic.

## Overview of the environment

![4-kitty-terminals](/assets/4kitty-terminals.png "4 kitty terminals")

![arch-digital-city](/assets/arch-digital-city.png "Arch Digital City")

![archkali-dark-desktop](/assets/archkali-dark-desktop.png "Arch Kali Dark Desktop")

![caja](/assets/caja.png "caja file manager")

![cmus-cava2](/assets/cmus-cava2.png "cmus cava")

![btop](/assets/btop.png "btop")

![firstlook](/assets/firstbspwm.png "First Look")

# sxhkd keybindings — bspwm + MATE (Parrot OS)

Applies to bspwm + MATE setup with sxhkd. Uses <kbd> style for keys.

### Legend
- <kbd>Super</kbd> = <kbd>Mod4</kbd> (Windows key)
- <kbd>Return</kbd> = Enter
- Arrow keys: <kbd>Left</kbd>, <kbd>Right</kbd>, <kbd>Up</kbd>, <kbd>Down</kbd>
- Function keys: <kbd>F8</kbd>–<kbd>F11</kbd>
- Media keys: <kbd>XF86Audio*</kbd>, <kbd>XF86MonBrightness*</kbd>

### Terminal / applications
- <kbd>Super</kbd> + <kbd>T</kbd> — Open MATE Terminal.  
  Command: `mate-terminal`
- <kbd>Super</kbd> + <kbd>Space</kbd> — Open MATE menu.  
  Command: `mate-menu`
- <kbd>Super</kbd> + <kbd>Return</kbd> — Minimal app menu (Rofi drun).  
  Command: `rofi -no-config -no-lazy-grab -show drun -modi drun -theme ~/.config/polybar/shapes/scripts/rofi/launcher.rasi`
- <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>D</kbd> — Rofi window switcher (windowcd).  
  Command: `rofi -show windowcd`
- <kbd>Super</kbd> + <kbd>L</kbd> — Lock screen (i3lock-fancy).  
  Command: `/usr/bin/i3lock-fancy`

### Window focus
- <kbd>Super</kbd> + <kbd>H</kbd> — Focus west.  
  Command: `bspc node -f west`
- <kbd>Super</kbd> + <kbd>J</kbd> — Focus south.  
  Command: `bspc node -f south`
- <kbd>Super</kbd> + <kbd>K</kbd> — Focus north.  
  Command: `bspc node -f north`
- <kbd>Super</kbd> + <kbd>L</kbd> — Focus east.  
  Command: `bspc node -f east`

### Window swap
- <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>H</kbd> — Swap with west.  
  Command: `bspc node -s west`
- <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>J</kbd> — Swap with south.  
  Command: `bspc node -s south`
- <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>K</kbd> — Swap with north.  
  Command: `bspc node -s north`
- <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>L</kbd> — Swap with east.  
  Command: `bspc node -s east`

### Resize windows (shrink/expand)
- <kbd>Super</kbd> + <kbd>Left</kbd> — Shrink left.  
  Command: `bspc node -z left +20 0`
- <kbd>Super</kbd> + <kbd>Right</kbd> — Shrink right.  
  Command: `bspc node -z right -20 0`
- <kbd>Super</kbd> + <kbd>Down</kbd> — Shrink down.  
  Command: `bspc node -z down 0 -20`
- <kbd>Super</kbd> + <kbd>Up</kbd> — Shrink up.  
  Command: `bspc node -z up 0 +20`
- <kbd>Super</kbd> + <kbd>Ctrl</kbd> + <kbd>Left</kbd> — Expand left.  
  Command: `bspc node -z left -20 0`
- <kbd>Super</kbd> + <kbd>Ctrl</kbd> + <kbd>Right</kbd> — Expand right.  
  Command: `bspc node -z right +20 0`
- <kbd>Super</kbd> + <kbd>Ctrl</kbd> + <kbd>Down</kbd> — Expand down.  
  Command: `bspc node -z down 0 +20`
- <kbd>Super</kbd> + <kbd>Ctrl</kbd> + <kbd>Up</kbd> — Expand up.  
  Command: `bspc node -z up 0 -20`

### Move windows between desktops
- <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>Left</kbd> — Send to previous desktop and follow.  
  Command: `bspc node -d prev.local && bspc node -f prev.local`
- <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>Right</kbd> — Send to next desktop and follow.  
  Command: `bspc node -d next.local && bspc node -f next.local`

### State toggles
- <kbd>F11</kbd> — Toggle fullscreen.  
  Command: `bspc node -t fullscreen`
- <kbd>F10</kbd> — Toggle tiled.  
  Command: `bspc node -t tiled`
- <kbd>F9</kbd> — Toggle pseudo-tiled.  
  Command: `bspc node -t pseudo-tiled`
- <kbd>F8</kbd> — Toggle floating.  
  Command: `bspc node -t floating`
- <kbd>Super</kbd> + <kbd>F</kbd> — Toggle floating (focused).  
  Command: `bspc node -t floating`

### Window lifecycle and cycling
- <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>Q</kbd> — Close focused window.  
  Command: `bspc node -c`
- <kbd>Alt</kbd> + <kbd>Tab</kbd> — Focus next window (local).  
  Command: `bspc node -f next.local`
- <kbd>Alt</kbd> + <kbd>Shift</kbd> + <kbd>Tab</kbd> — Focus previous window (local).  
  Command: `bspc node -f prev.local`

### Desktops / workspaces
- <kbd>Super</kbd> + <kbd>1</kbd> … <kbd>9</kbd> — Switch to desktop 1–9.  
  Command: `bspc desktop -f ^N`
- <kbd>Super</kbd> + <kbd>0</kbd> — Switch to desktop 10.  
  Command: `bspc desktop -f ^10`
- <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>1</kbd> … <kbd>9</kbd> — Send window to desktop 1–9.  
  Command: `bspc node -d ^N`
- <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>0</kbd> — Send window to desktop 10.  
  Command: `bspc node -d ^10`

### Monitors
- <kbd>Super</kbd> + <kbd>Ctrl</kbd> + <kbd>H</kbd> — Send window to monitor west.  
  Command: `bspc node -m west`
- <kbd>Super</kbd> + <kbd>Ctrl</kbd> + <kbd>L</kbd> — Send window to monitor east.  
  Command: `bspc node -m east`

### bspwm session
- <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>R</kbd> — Restart bspwm.  
  Command: `bspc wm -r`
- <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>Q</kbd> — Quit bspwm.  
  Command: `bspc quit`
- <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>S</kbd> — Reload sxhkd hotkeys.  
  Command: `pkill -USR1 -x sxhkd`

### Panels / compositing
- <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>P</kbd> — Launch Plank if not running.  
  Command: `pgrep -x plank > /dev/null || plank &`
- <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>C</kbd> — Launch Picom if not running.  
  Command: `pgrep -x picom > /dev/null || picom --config ~/.config/picom/picom.conf &`
- <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>B</kbd> — Relaunch Polybar.  
  Command: `~/.config/polybar/launch.sh &`

### Audio
- <kbd>XF86AudioRaiseVolume</kbd> — Volume up 5%.  
  Command: `pactl set-sink-volume @DEFAULT_SINK@ +5%`
- <kbd>XF86AudioLowerVolume</kbd> — Volume down 5%.  
  Command: `pactl set-sink-volume @DEFAULT_SINK@ -5%`
- <kbd>XF86AudioMute</kbd> — Toggle mute.  
  Command: `pactl set-sink-mute @DEFAULT_SINK@ toggle`

### Brightness
- <kbd>XF86MonBrightnessUp</kbd> — Increase brightness 10%.  
  Command: `xbacklight -inc 10`
- <kbd>XF86MonBrightnessDown</kbd> — Decrease brightness 10%.  
  Command: `xbacklight -dec 10`

### Screenshots
- <kbd>Print</kbd> — Screenshot (MATE Screenshot).  
  Command: `mate-screenshot ~/Pictures/Screenshots/Screenshot_%Y-%m-%d_%H-%M-%S.png`
- <kbd>Super</kbd> + <kbd>Print</kbd> — Select area (scrot).  
  Command: `scrot -s ~/Pictures/Screenshot_%Y-%m-%d_%H-%M-%S.png`

### Monitors / display
- <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>R</kbd> — Reload monitors.  
  Command: `xrandr --auto`

### Custom applications
- <kbd>Super</kbd> + <kbd>C</kbd> — Open Caja.  
  Command: `caja`
- <kbd>Super</kbd> + <kbd>O</kbd> — Open Obsidian.  
  Command: `obsidian`
- <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>T</kbd> — Open Kitty.  
  Command: `kitty`
- <kbd>Super</kbd> + <kbd>S</kbd> — MATE Control Center.  
  Command: `mate-control-center`

### Extra features
- <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>-</kbd> — Hide focused window (scratchpad).  
  Command: `bspc node -g hidden`
- <kbd>Super</kbd> + <kbd>-</kbd> — Restore last hidden window.  
  Command: `bspc node -g hidden && bspc node -f last.hidden`
- <kbd>Super</kbd> + <kbd>.</kbd> — Focus next occupied.  
  Command: `bspc node -f next.occupied`
- <kbd>Super</kbd> + <kbd>,</kbd> — Focus previous occupied.  
  Command: `bspc node -f prev.occupied`



## Software
This configuration uses the following software:
- **WM**: [bspwm](https://github.com/baskerville/bspwm)
- **Hotkey**: [sxhkd](https://github.com/baskerville/sxhkd)
- **Locker**: [i3lock-fancy](https://github.com/meskarune/i3lock-fancy)
- **Shell**: [zsh](https://www.zsh.org/)
- **Shell Theme**: [powerlevel10k](https://github.com/romkatv/powerlevel10k)
- **Shell configuration manager**: [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
- **Bars**: [polybar](https://github.com/polybar/polybar)
- **Bars Theme**: [polybar-themes](https://github.com/adi1090x/polybar-themes)
- **Compositor**: [picom](https://github.com/yshui/picom)
- **Fonts**: [iosevka](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Iosevka) and [hack](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack)
- **Application Launcher**: [rofi](https://github.com/davatorium/rofi)
- **Browsers**: [firefox](https://www.mozilla.org/en-US/firefox/new/)
- **Terminals**: [kitty](https://sw.kovidgoyal.net/kitty/) and [qterminal](https://github.com/lxqt/qterminal)
- **Static Wallpaper**: [feh](https://github.com/derf/feh)
- **Screenshot**: [flameshot](https://flameshot.org/)
- **File Manager**: Caja

## Website
- https://framework-221e-prototype.onrender.com/
- I also have a discord community. You may join the community from my website.


