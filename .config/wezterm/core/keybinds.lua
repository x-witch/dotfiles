local wezterm = require("wezterm")

return {
    {
        key = "Insert",
        mods = "SHIFT",
        action = wezterm.action.PasteFrom('Clipboard')
    },
    {
        key = [[\]],
        mods = "CTRL|ALT",
        action = wezterm.action({
            SplitHorizontal = { domain = "CurrentPaneDomain" },
        }),
    },
    {
        key = [[\]],
        mods = "CTRL",
        action = wezterm.action({
            SplitVertical = { domain = "CurrentPaneDomain" },
        }),
    },
    -- {
    --     key = "q",
    --     mods = "CTRL",
    --     action = wezterm.action({ CloseCurrentPane = { confirm = false } }),
    -- },
    {
        key = "h",
        mods = "CTRL|ALT",
        action = wezterm.action({ ActivatePaneDirection = "Left" }),
    },
    {
        key = "l",
        mods = "CTRL|ALT",
        action = wezterm.action({ ActivatePaneDirection = "Right" }),
    },
    {
        key = "k",
        mods = "CTRL|ALT",
        action = wezterm.action({ ActivatePaneDirection = "Up" }),
    },
    {
        key = "j",
        mods = "CTRL|ALT",
        action = wezterm.action({ ActivatePaneDirection = "Down" }),
    },
    {
        key = "h",
        mods = "CTRL|SHIFT|ALT",
        action = wezterm.action({ AdjustPaneSize = { "Left", 1 } }),
    },
    {
        key = "l",
        mods = "CTRL|SHIFT|ALT",
        action = wezterm.action({ AdjustPaneSize = { "Right", 1 } }),
    },
    {
        key = "k",
        mods = "CTRL|SHIFT|ALT",
        action = wezterm.action({ AdjustPaneSize = { "Up", 1 } }),
    },
    {
        key = "j",
        mods = "CTRL|SHIFT|ALT",
        action = wezterm.action({ AdjustPaneSize = { "Down", 1 } }),
    },
    {
        key = "t",
        mods = "CTRL",
        action = wezterm.action({ SpawnTab = "DefaultDomain" }),
    },
    {
        key = "t",
        mods = "CTRL|SHIFT",
        action = wezterm.action.SpawnTab({
            DomainName = "WSL:Ubuntu",
        }),
    },
    -- {
    --     key = "w",
    --     mods = "CTRL",
    --     action = wezterm.action({ CloseCurrentTab = { confirm = false } }),
    -- },
    {
        key = "Tab",
        mods = "CTRL",
        action = wezterm.action({ ActivateTabRelative = 1 }),
    },
    {
        key = "Tab",
        mods = "CTRL|SHIFT",
        action = wezterm.action({ ActivateTabRelative = -1 }),
    }, -- standard copy/paste bindings
    {
        key = "x",
        mods = "CTRL",
        action = "ActivateCopyMode",
    },
    {
        key = "v",
        mods = "CTRL|SHIFT",
        action = wezterm.action({ PasteFrom = "Clipboard" }),
    },
    {
        key = "c",
        mods = "CTRL|SHIFT",
        action = wezterm.action({ CopyTo = "ClipboardAndPrimarySelection" }),
    },
    {
        key = "F",
        mods = "SHIFT|CTRL",
        action = wezterm.action.Search({ CaseInSensitiveString = "" }),
    },
    {
        key = "x",
        mods = "CTRL|SHIFT",
        action = wezterm.action_callback(function(win, pane)
            wezterm.background_child_process({
                "pwsh",
                "-c",
                "x11",
            })
        end),
    },
    {
        key = "z",
        mods = "CTRL | SHIFT",
        action = wezterm.action({ EmitEvent = "plumb" }),
    },
    {
        key = "PageUp",
        mods = "SHIFT",
        action = wezterm.action({ ScrollByPage = -1 }),
    },
    {
        key = "PageDown",
        mods = "SHIFT",
        action = wezterm.action({ ScrollByPage = 1 }),
    },
    {
        key = "+",
        mods = "CTRL | SHIFT",
        action = "IncreaseFontSize",
    },
    {
        key = "-",
        mods = "CTRL | SHIFT",
        action = "DecreaseFontSize",
    },
    {
        key = "t",
        mods = "ALT",
        action = wezterm.action.ShowLauncher,
    },
    {
        key = "w",
        mods = "CTRL | SHIFT",
        action = wezterm.action({ CloseCurrentTab = { confirm = true } }),
    },
    {
        key = "LeftArrow",
        mods = "CTRL | SHIFT",
        action = wezterm.action({ ActivateTabRelative = -1 }),
    },
    {
        key = "RightArrow",
        mods = "CTRL | SHIFT",
        action = wezterm.action({ ActivateTabRelative = 1 }),
    },
    {
        key = "PageUp",
        mods = "CTRL | SHIFT",
        action = wezterm.action({ MoveTabRelative = -1 }),
    },
    {
        key = "PageDown",
        mods = "CTRL | SHIFT",
        action = wezterm.action({ MoveTabRelative = 1 }),
    },
    {
      key = 'n',
      mods = 'SHIFT|CTRL',
      action = wezterm.action.ToggleFullScreen,
    },
}
