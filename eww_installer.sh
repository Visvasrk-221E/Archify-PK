#!/usr/bin/env bash
set -e

# 1. Install system dependencies (adjust names for Debian/Parrot)
sudo apt install -y \
    git curl build-essential \
    libgtk-3-dev libgtk-layer-shell-dev libdbusmenu-gtk3-dev \
    # plus whatever else your OS needs

# 2. Get the source
git clone https://github.com/elkowar/eww.git
cd eww

# 3. Build
# If on Wayland only: 
# cargo build --release --no-default-features --features=wayland
cargo build --release

# 4. Install
sudo install -Dm755 target/release/eww /usr/local/bin/eww

# 5. Post‑install: put config dir
#mkdir -p ~/.config/eww
#cp -r examples/* ~/.config/eww/
cd ..
