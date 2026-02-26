#!/bin/bash

KB=$(hyprctl devices -j | jq -r '.keyboards[] | select(.main == true) | .name')

# переключаем на следующую раскладку
hyprctl switchxkblayout "$KB" next
