#!/bin/bash

# hyprpaper arka planda çalışıyor mu kontrol et
if pgrep -x "waybar" > /dev/null
then
    # Eğer açıksa: kapat ve yeniden başlat
    pkill waybar
    # İşlemin kapanması için çok kısa bir süre bekle (çakışmayı önler)
    sleep 0.5
    waybar &
else
    # Eğer açık değilse: sadece başlat
    waybar &
fi
