-- ╔══════════════════════════════════════════════════╗
-- ║               configs/env.lua                    ║
-- ╚══════════════════════════════════════════════════╝

-- NVIDIA
hl.env("LIBVA_DRIVER_NAME",          "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME",  "nvidia")
hl.env("__GL_GSYNC_ALLOWED",         "0")
hl.env("__GL_VRR_ALLOWED",           "0")
hl.env("GBM_BACKEND",                "nvidia-drm")
hl.env("NVD_BACKEND",                "direct")

-- Cursor
hl.env("HYPRCURSOR_THEME", "Plasma-Overdose-BW")
hl.env("HYPRCURSOR_SIZE",  "14")

-- QT
hl.env("QT_QPA_PLATFORM",                  "wayland")
hl.env("QT_QPA_PLATFORMTHEME",             "qt5ct")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR",      "1")
hl.env("QT_STYLE_OVERRIDE",               "kvantum")

-- Toolkit Backend
hl.env("GDK_BACKEND",     "wayland,x11,*")
hl.env("CLUTTER_BACKEND", "wayland")

-- XDG
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE",    "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
