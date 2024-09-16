#!/bin/sh
# wallpaper-engine alternative >> https://github.com/varietywalls/variety?tab=readme-ov-file
# installer for arch (steam-deck), main lib-location is /usr/lib/qt/qml/com/github/catsout/wallpaperEngineKde/
echo "正在复制文件>>>‍该稳定版由ios极品云烟二次编译>>> 请输入管理员密码"
sudo steamos-readonly disable
sudo pacman-key --init
sudo pacman-key --populate archlinux
sudo pacman-key --populate holo
yes '' | sudo pacman -Syu
yes '' | sudo pacman -S gstreamer-vaapi gst-plugin-pipewire gst-plugins-bad-libs gst-plugins-good gst-plugins-ugly mpv python-websockets qt5-websockets --overwrite '*'
mkdir /home/deck/.local/share/plasma/
mkdir /home/deck/.local/share/plasma/wallpapers
cp -r /home/deck/Steamdeck-wallpaper-engine/kde/new/plasma/wallpapers/com.github.casout.wallpaperEngineKde/ /home/deck/.local/share/plasma/wallpapers/
sudo cp -r binaries/arch/sd/com /usr/lib/qt/qml/
sudo plasmashell
clear
sudo rm -rf /home/deck/Steamdeck-wallpaper-engine


