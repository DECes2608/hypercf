-- ╔══════════════════════════════════════════════════╗
-- ║              configs/basekeys.lua                ║
-- ║                                                  ║
-- ║  Bind seçenekleri:                               ║
-- ║    { locked = true }    → Kilit ekranında çalışır║
-- ║    { repeating = true } → Basılı tutunca tekrarlar║
-- ╚══════════════════════════════════════════════════╝

-- ── Ses ve Medya Tuşları ─────────────────────────────────
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.1+ -l 1.0"), { locked = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.1-"), { locked = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl -p spotify play-pause"), { locked = true })
hl.bind("XF86AudioStop", hl.dsp.exec_cmd("playerctl stop"), { locked = true })

-- ── Temel Pencere Yönetimi (Kapatma, Fullscreen, Floating) ─
hl.bind("SUPER + Q", hl.dsp.window.close()) -- Pencere Kapatma (Eski killactive)
hl.bind("SUPER + F", hl.dsp.window.fullscreen({ action = "toggle" }))
hl.bind("SUPER + Space", hl.dsp.window.float({ action = "toggle" }))

-- Spotify kolay kontrol
hl.bind("SUPER + W", hl.dsp.exec_cmd("playerctl -p spotify play-pause"))

-- ── Parlaklık ────────────────────────────────────────
hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd("brightnessctl --class=backlight set +10%"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl --class=backlight set 10%-"))

-- ── Ekran Görüntüsü ──────────────────────────────────
hl.bind("Print",         hl.dsp.exec_cmd("bash -c 'grim -g \"$(slurp)\" - | wl-copy'"))
hl.bind("SUPER + A",     hl.dsp.exec_cmd("bash -c 'mkdir -p ~/Belgeler/Ekran/ && grim -g \"$(slurp)\" ~/Belgeler/Ekran/$(date +%Y-%m-%d-%H%M%S).png'"))

-- ── Yön Tuşları ile Pencere Odağı (Focus) ────────────────
hl.bind("SUPER + left", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + right", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + up", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + down", hl.dsp.focus({ direction = "down" }))

-- Opsiyonel: Vim tuş takımı (HJKL) ile pencere odağı değiştirmek isterseniz:
hl.bind("SUPER + H", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + L", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + K", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + J", hl.dsp.focus({ direction = "down" }))

-- ── Bağıl Workspace / Pencere Taşıma (Relative) ──────────
hl.bind("SUPER + CTRL + Page_Down", hl.dsp.window.move({ workspace = "e+1" }))
hl.bind("SUPER + CTRL + Page_Up", hl.dsp.window.move({ workspace = "e-1" }))
hl.bind("SUPER + CTRL + U", hl.dsp.window.move({ workspace = "e+1" }))
hl.bind("SUPER + CTRL + I", hl.dsp.window.move({ workspace = "e-1" }))

-- ── Mouse Scroll (Tekerlek) ile Workspace Geçişi ─────────
hl.bind("SUPER + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- ── Workspace 1–10 Arası Geçiş & Pencere Taşıma ──────────
for i = 1, 9 do
	hl.bind("SUPER + " .. i, hl.dsp.focus({ workspace = i }))
	hl.bind("SUPER + SHIFT + " .. i, hl.dsp.window.move({ workspace = i }))
end

-- ── Mouse ile Sürükleme ve Pencere Boyutlandırma ──────────
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.gesture({ fingers = 3, direction = "vertical", action = "workspace" })
hl.gesture({ fingers = 3, direction = "left",     action = function() hl.exec_cmd("playerctl -p spotify next") end })
hl.gesture({ fingers = 3, direction = "right",    action = function() hl.exec_cmd("playerctl -p spotify previous") end })
