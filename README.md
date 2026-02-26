# Hyprland Dotfiles

Моя личная сборка Arch Linux + Hyprland.  
Репозиторий используется как:
- резервная копия конфигов
- быстрый старт на новой системе
- база для экспериментов

---

## 🖥 Система

- OS: Arch Linux
- WM: Hyprland
- Compositor: Wayland
- Shell: Zsh
- Terminal: Kitty

---

## 🚀 Быстрый старт (для новой системы установка+настройка)

Подключеник к сети:
```bash
iwctl
device list
station wlan0 scan
station wlan0 get-networks
station wlan0 connect ""
```

Установка системы:
```bash
archinstall
```

Копирование конфигов:
```bash
git clone git@github.com:Sa1ler/hyprland-dotfiles.git
cd hyprland-dotfiles

cp -r Thunar ~/.config
cp -r cava ~/.config
cp -r colors ~/.config
cp -r fastfetch ~/.config
cp -r hypr ~/.config
cp -r kitty ~/.config
cp -r nvim ~/.config
cp -r rofi ~/.config
cp -r waybar ~/.config
cp -r wlogout ~/.config
cp -r wofi ~/.config
cp -r .p10k.zsh ~/home/user
cp -r .zshrc ~/home/user
cp -r fuzzy_open.sh ~/home/user
cp -r .oh-my-zsh ~/home/user
