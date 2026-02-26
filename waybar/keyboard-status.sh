#!/bin/bash

# имя основной клавиатуры
KB=$(hyprctl devices -j | jq -r '.keyboards[] | select(.main == true) | .name')

# текущая раскладка
LAYOUT=$(hyprctl devices -j | jq -r '
  .keyboards[] | select(.main == true) | .active_keymap
')

# capslock
CAPS=$(hyprctl devices -j | jq -r '
  .keyboards[] | select(.main == true) | .capsLock
')

case "$LAYOUT" in
  *English*) LANG="EN" ;;
  *Russian*) LANG="RU" ;;
  *) LANG="??" ;;
esac

if [[ "$CAPS" == "true" ]]; then
  TEXT="$LANG·CAPS"
  CLASS="$(echo "$LANG" | tr '[:upper:]' '[:lower:]')-caps"
else
  TEXT="$LANG"
  CLASS="$(echo "$LANG" | tr '[:upper:]' '[:lower:]')"
fi

echo "{\"text\":\"$TEXT\",\"class\":\"$CLASS\",\"tooltip\":\"Switch layout\"}"
