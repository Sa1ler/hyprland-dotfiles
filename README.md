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
git@github.com:Sa1ler/hyprland-dotfiles.git
cd hyprland-dotfiles
