-- ╔══════════════════════════════════════════════════╗
-- ║           configs/monitor_input.lua              ║
-- ║  (eski adı: m&i.conf)                            ║
-- ╚══════════════════════════════════════════════════╝

-- ── Monitörler ──────────────────────────────────────
-- hl.monitor({ output = "HDMI-A-1", mode = "1920x1080@60", position = "1920x0", scale = 1 })
hl.monitor({ output = "eDP-1", mode = "1920x1080@60.01", position = "0x0", scale = 1 })


-- ── Giriş Ayarları ──────────────────────────────────
hl.config({
    input = {
        kb_layout            = "tr",
        repeat_rate          = 35,
        repeat_delay         = 300,
        numlock_by_default   = true,
        follow_mouse         = 1,
        mouse_refocus        = true,
        sensitivity          = -0.5,

        touchpad = {
            tap_to_click         = true,
            natural_scroll       = true,
            disable_while_typing = false,
            -- ⚠ KONTROL ET: gesture satırları Lua'da hl.gesture() ile ayrı tanımlanıyor
            -- Aşağıdaki gesture bloğuna bak
        },
    },

    cursor = {
        no_warps          = true,
        no_hardware_cursors = true,
    },
})


-- ── Touchpad Gesture'ları ────────────────────────────
-- ⚠ NOT: gesture API'si hâlâ wiki'de net belgelenmemiş.
-- Aşağıdaki satırlar tahmini Lua karşılıklarıdır.
-- Doğrulamak için: https://wiki.hypr.land/Configuring/
--
-- Eski .conf karşılıkları:
--   gesture = 3, vertical, workspace
--   gesture = 3, left,  dispatcher, exec, playerctl -p spotify next
--   gesture = 3, right, dispatcher, exec, playerctl -p spotify previous
--   gesture = 2, pinchout, fullscreen
--   gesture = 2, pinchin,  dispatcher, killactive

-- hl.gesture({ fingers = 3, direction = "vertical", action = hl.dsp.workspace.move({ workspace = "e+1" }) })
-- hl.gesture({ fingers = 3, direction = "left",     action = hl.dsp.exec_cmd("playerctl -p spotify next") })
-- hl.gesture({ fingers = 3, direction = "right",    action = hl.dsp.exec_cmd("playerctl -p spotify previous") })
-- hl.gesture({ fingers = 2, type = "pinchout",      action = hl.dsp.window.fullscreen({ mode = 1 }) })
-- hl.gesture({ fingers = 2, type = "pinchin",       action = hl.dsp.window.close() })


-- ── Per-Device Ayarı ────────────────────────────────
hl.device({
    name          = "synaptics-tm3336-001",
    sensitivity   = -0.3,
    accel_profile = "adaptive",
})
