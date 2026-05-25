-- ╔══════════════════════════════════════════════════╗
-- ║               configs/look.lua                   ║
-- ╚══════════════════════════════════════════════════╝

-- ── Renk Değişkenleri ───────────────────────────────
local primary        = "rgb(aaaaaa)"
local surface        = "rgb(111111)"
local secondary      = "rgb(a7a7a7)"
local error_color    = "rgb(dddddd)"

-- ── Genel Görünüm ────────────────────────────────────
hl.config({
    -- font_family kaldırıldı (Hyprland mimarisinde geçersizdir)
    general = {
        gaps_in  = 2,
        gaps_out = 2,
        col = {
            active_border   = primary,
            inactive_border = surface,
        },
    },

    decoration = {
        rounding = 0,
        shadow   = { enabled = false },
    },

    misc = {
        disable_hyprland_logo    = true,
        force_default_wallpaper  = 0,
    },

    group = {
        col = {
            border_active          = secondary,
            border_inactive        = surface,
            border_locked_active   = error_color,
            border_locked_inactive = surface,
        },
        groupbar = {
            col = {
                active          = secondary,
                inactive        = surface,
                locked_active   = error_color,
                locked_inactive = surface,
            },
        },
    },
})

-- Spring Curves

hl.curve("spring_menu", { type = "spring", mass = 1, stiffness = 80, dampening = 14 })
hl.curve("spring_window", { type = "spring", mass = 1, stiffness = 30, dampening = 8 })
hl.curve("spring_open", {type="spring",mass=1,stiffness=30,dampening=8})
hl.curve("spring_workspace", { type = "spring", mass = 1.2, stiffness = 30, dampening = 10 })
hl.curve("spring_special", { type = "spring", mass = 1, stiffness = 30, dampening = 8 })

-- ── Animasyonlar ────────────────────────────────────
hl.animation({ leaf = "windowsMove",     enabled = true, speed = 6,  spring = "spring_window" })
hl.animation({ leaf = "windowsIn",   enabled = true, speed = 6,  spring = "spring_open" })
hl.animation({ leaf = "windowsOut",  enabled = true, speed = 5,  spring = "spring_window" })
--hl.animation({ leaf = "borderangle", enabled = true, speed = 30, bezier = "liner",   style = "loop"      })
--hl.animation({ leaf = "fade",        enabled = true, speed = 10, style = "spring", spring = "spring_fade" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 5, spring = "spring_workspace" })

for i = 1, 7 do
    hl.workspace_rule({
        workspace = i, -- veya tostring(i)
        persistent = true,
    })
end
