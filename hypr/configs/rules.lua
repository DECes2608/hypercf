-- ╔══════════════════════════════════════════════════╗
-- ║               configs/rules.lua                  ║
-- ╚══════════════════════════════════════════════════╝
hl.window_rule({
  name = "float copyq",
  match = {
    class = "com.github.hluk.copyq"
  },
  float = true,
  size = {"monitor_w * 0.2", "monitor_h * 0.6"},
  center = true,
})

hl.window_rule({
  name = "float localsend",
  match = {
    class = "localsend"
  },
  float = true,
  size = {"monitor_w * 0.2", "monitor_h * 0.6"},
  center = true,
})

hl.window_rule({
  name = "float blueman-manager",
  match = {
    class = "blueman-manager"
  },
  float = true,
  size = {"monitor_w * 0.2", "monitor_h * 0.6"},
  center = true,
})

hl.window_rule({
  name = "ws-Zed",
  match = {
    class = "dev.zed.Zed"
  },
  workspace = 2,
})

hl.window_rule({
  name = "Spotify",
  match = {
    class = "Spotify"
  },
  workspace = 3,
  opacity = 0.9,
})

hl.window_rule({
  name = "obsidian",
  match = {
    class = "obsidian"
  },
  workspace = 2,
})

hl.window_rule({
  name = "librewolf",
  match = {
    class = "librewolf"
  },
  workspace = 1,
})

hl.window_rule({
  name = "steam",
  match = {
    class = "steam"
  },
  workspace = 4,
})

hl.window_rule({
  name = "thunar",
  match = {
    class = "thunar"
  },
  opacity = 0.8,
})
