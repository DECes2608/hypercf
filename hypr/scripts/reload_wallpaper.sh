#!/bin/bash

# hyprpaper arka planda çalışıyor mu kontrol et
if pgrep -x "hyprpaper" > /dev/null
then
    # Eğer açıksa: kapat ve yeniden başlat
    pkill hyprpaper
    # İşlemin kapanması için çok kısa bir süre bekle (çakışmayı önler)
    sleep 0.5
    hyprpaper &
else
    # Eğer açık değilse: sadece başlat
    hyprpaper &
fi
