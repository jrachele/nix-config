# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "apps/seahorse/listing" = {
      keyrings-selected = [ "openssh:///home/juge/.ssh" ];
    };

    "ca/desrt/dconf-editor" = {
      saved-pathbar-path = "/org/gnome/shell/app-picker-layout";
      saved-view = "/org/gnome/shell/app-picker-layout";
      show-warning = false;
      window-height = 1011;
      window-is-maximized = false;
      window-width = 1529;
    };

    "org/gnome/Console" = {
      last-window-maximised = false;
      last-window-size = mkTuple [ 1815 964 ];
    };

    "org/gnome/Extensions" = {
      window-height = 1083;
      window-width = 1240;
    };

    "org/gnome/control-center" = {
      last-panel = "multitasking";
      window-state = mkTuple [ 980 640 false ];
    };

    "org/gnome/desktop/app-folders" = {
      folder-children = [ "Utilities" "YaST" "Pardus" ];
    };

    "org/gnome/desktop/app-folders/folders/Pardus" = {
      categories = [ "X-Pardus-Apps" ];
      name = "X-Pardus-Apps.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/Utilities" = {
      apps = [ "org.freedesktop.GnomeAbrt.desktop" "nm-connection-editor.desktop" "org.gnome.baobab.desktop" "org.gnome.Connections.desktop" "org.gnome.DejaDup.desktop" "org.gnome.DiskUtility.desktop" "org.gnome.Evince.desktop" "org.gnome.FileRoller.desktop" "org.gnome.font-viewer.desktop" "org.gnome.Loupe.desktop" "org.gnome.seahorse.Application.desktop" "org.gnome.tweaks.desktop" "org.gnome.Usage.desktop" ];
      categories = [ "X-GNOME-Utilities" ];
      name = "X-GNOME-Utilities.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/YaST" = {
      categories = [ "X-SuSE-YaST" ];
      name = "suse-yast.directory";
      translate = true;
    };

    "org/gnome/desktop/background" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///run/current-system/sw/share/backgrounds/gnome/neogeo-l.jxl";
      picture-uri-dark = "file:///run/current-system/sw/share/backgrounds/gnome/neogeo-d.jxl";
      primary-color = "#e18477";
      secondary-color = "#000000";
    };

    "org/gnome/desktop/calendar" = {
      show-weekdate = false;
    };

    "org/gnome/desktop/input-sources" = {
      sources = [ (mkTuple [ "xkb" "us" ]) ];
      xkb-options = [ "terminate:ctrl_alt_bksp" ];
    };

    "org/gnome/desktop/interface" = {
      accent-color = "pink";
      clock-show-weekday = true;
      color-scheme = "prefer-dark";
      enable-hot-corners = false;
      gtk-theme = "orchis-theme";
    };

    "org/gnome/desktop/notifications" = {
      application-children = [ "org-gnome-console" "gnome-power-panel" ];
    };

    "org/gnome/desktop/notifications/application/gnome-power-panel" = {
      application-id = "gnome-power-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/kitty" = {
      application-id = "kitty.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-console" = {
      application-id = "org.gnome.Console.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-settings" = {
      application-id = "org.gnome.Settings.desktop";
    };

    "org/gnome/desktop/peripherals/keyboard" = {
      numlock-state = true;
    };

    "org/gnome/desktop/peripherals/mouse" = {
      accel-profile = "flat";
      speed = 0.496124;
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/screensaver" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///run/current-system/sw/share/backgrounds/gnome/neogeo-l.jxl";
      primary-color = "#e18477";
      secondary-color = "#000000";
    };

    "org/gnome/desktop/search-providers" = {
      enabled = [ "org.gnome.Weather.desktop" ];
      sort-order = [ "org.gnome.Settings.desktop" "org.gnome.Contacts.desktop" "org.gnome.Nautilus.desktop" ];
    };

    "org/gnome/desktop/wm/keybindings" = {
      activate-window-menu = [];
      always-on-top = [];
      begin-move = [];
      begin-resize = [];
      close = [ "<Super>q" ];
      cycle-group = [];
      cycle-group-backward = [];
      cycle-panels = [];
      cycle-panels-backward = [];
      cycle-windows = [];
      cycle-windows-backward = [];
      lower = [];
      maximize = [];
      maximize-horizontally = [];
      maximize-vertically = [];
      minimize = [];
      move-to-center = [];
      move-to-corner-ne = [];
      move-to-corner-nw = [];
      move-to-corner-se = [];
      move-to-corner-sw = [];
      move-to-monitor-down = [];
      move-to-monitor-left = [];
      move-to-monitor-right = [];
      move-to-monitor-up = [];
      move-to-side-e = [];
      move-to-side-n = [];
      move-to-side-s = [];
      move-to-side-w = [];
      move-to-workspace-1 = [ "<Shift><Super>1" ];
      move-to-workspace-10 = [ "<Shift><Super>10" ];
      move-to-workspace-11 = [ "<Shift><Super>11" ];
      move-to-workspace-12 = [ "<Shift><Super>12" ];
      move-to-workspace-2 = [ "<Shift><Super>2" ];
      move-to-workspace-3 = [ "<Shift><Super>3" ];
      move-to-workspace-4 = [ "<Shift><Super>4" ];
      move-to-workspace-5 = [ "<Shift><Super>5" ];
      move-to-workspace-6 = [ "<Shift><Super>6" ];
      move-to-workspace-7 = [ "<Shift><Super>7" ];
      move-to-workspace-8 = [ "<Shift><Super>8" ];
      move-to-workspace-9 = [ "<Shift><Super>9" ];
      move-to-workspace-down = [];
      move-to-workspace-last = [];
      move-to-workspace-left = [];
      move-to-workspace-right = [];
      move-to-workspace-up = [];
      panel-main-menu = [];
      panel-run-dialog = [];
      raise = [];
      raise-or-lower = [];
      set-spew-mark = [];
      show-desktop = [];
      switch-applications = [];
      switch-applications-backward = [];
      switch-group = [];
      switch-group-backward = [];
      switch-input-source = [];
      switch-input-source-backward = [];
      switch-panels = [];
      switch-panels-backward = [];
      switch-to-workspace-1 = [ "<Super>1" ];
      switch-to-workspace-10 = [ "<Super>10" ];
      switch-to-workspace-11 = [ "<Super>11" ];
      switch-to-workspace-12 = [ "<Super>12" ];
      switch-to-workspace-2 = [ "<Super>2" ];
      switch-to-workspace-3 = [ "<Super>3" ];
      switch-to-workspace-4 = [ "<Super>4" ];
      switch-to-workspace-5 = [ "<Super>5" ];
      switch-to-workspace-6 = [ "<Super>6" ];
      switch-to-workspace-7 = [ "<Super>7" ];
      switch-to-workspace-8 = [ "<Super>8" ];
      switch-to-workspace-9 = [ "<Super>9" ];
      switch-to-workspace-down = [];
      switch-to-workspace-last = [];
      switch-to-workspace-left = [];
      switch-to-workspace-right = [];
      switch-to-workspace-up = [];
      switch-windows = [];
      switch-windows-backward = [];
      toggle-above = [];
      toggle-fullscreen = [];
      toggle-maximized = [ "<Super>slash" ];
      toggle-on-all-workspaces = [];
      unmaximize = [];
    };

    "org/gnome/desktop/wm/preferences" = {
      button-layout = "appmenu:minimize,maximize,close";
      num-workspaces = 10;
      resize-with-right-button = true;
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
    };

    "org/gnome/file-roller/listing" = {
      list-mode = "as-folder";
      name-column-width = 65;
      show-path = false;
      sort-method = "name";
      sort-type = "ascending";
    };

    "org/gnome/file-roller/ui" = {
      sidebar-width = 200;
      window-height = 480;
      window-width = 600;
    };

    "org/gnome/gnome-system-monitor" = {
      show-dependencies = false;
      show-whose-processes = "user";
      window-height = 1060;
      window-width = 1192;
    };

    "org/gnome/gnome-system-monitor/proctree" = {
      col-26-visible = false;
      col-26-width = 0;
    };

    "org/gnome/mutter" = {
      dynamic-workspaces = false;
      workspaces-only-on-primary = false;
    };

    "org/gnome/nautilus/list-view" = {
      default-zoom-level = "small";
    };

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "icon-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
    };

    "org/gnome/nautilus/window-state" = {
      initial-size = mkTuple [ 1837 1192 ];
    };

    "org/gnome/settings-daemon/plugins/color" = {
      night-light-schedule-automatic = false;
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/" ];
      home = [ "<Super>bracketright" ];
      search = [ "<Super>d" ];
      www = [ "<Super>backslash" ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Super>Return";
      command = "kitty zellij";
      name = "Kitty";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
      binding = "<Super>e";
      command = "kitty nvim";
      name = "Open Terminal";
    };

    "org/gnome/shell" = {
      disabled-extensions = [ "light-style@gnome-shell-extensions.gcampax.github.com" "windowsNavigator@gnome-shell-extensions.gcampax.github.com" "drive-menu@gnome-shell-extensions.gcampax.github.com" "status-icons@gnome-shell-extensions.gcampax.github.com" "auto-move-windows@gnome-shell-extensions.gcampax.github.com" "apps-menu@gnome-shell-extensions.gcampax.github.com" "places-menu@gnome-shell-extensions.gcampax.github.com" "window-list@gnome-shell-extensions.gcampax.github.com" ];
      enabled-extensions = [ "user-theme@gnome-shell-extensions.gcampax.github.com" "system-monitor@gnome-shell-extensions.gcampax.github.com" "openbar@neuromorph" "dash-to-dock@micxgx.gmail.com" "workspace-indicator@gnome-shell-extensions.gcampax.github.com" ];
      favorite-apps = [ "firefox.desktop" "org.gnome.Nautilus.desktop" "kitty.desktop" "com.bitwig.BitwigStudio.desktop" "rust-rover.desktop" "obsidian.desktop" "youtube-music.desktop" ];
      welcome-dialog-last-shown-version = "47.2";
    };

    "org/gnome/shell/extensions/dash-to-dock" = {
      apply-custom-theme = true;
      background-opacity = 0.8;
      dash-max-icon-size = 48;
      dock-position = "LEFT";
      height-fraction = 0.9;
      hot-keys = false;
      multi-monitor = false;
      preferred-monitor = -2;
      preferred-monitor-by-connector = "DP-1";
    };

    "org/gnome/shell/extensions/openbar" = {
      apply-menu-notif = true;
      apply-menu-shell = true;
      autofg-menu = true;
      autohg-menu = false;
      bcolor = [ "0.000" "0.000" "0.000" ];
      bg-change = true;
      bgalpha2 = 0.69;
      bgcolor = [ "0.017" "0.017" "0.017" ];
      bgcolor-wmax = [ "0.017" "0.017" "0.017" ];
      bgcolor2 = [ "0.753" "0.380" "0.796" ];
      bguri = "file:///run/current-system/sw/share/backgrounds/gnome/neogeo-d.jxl";
      boxcolor = [ "0.017" "0.017" "0.017" ];
      bradius = 0.0;
      candybar = false;
      count1 = 238246;
      count10 = 469;
      count11 = 398;
      count12 = 234;
      count2 = 175681;
      count3 = 135828;
      count4 = 128800;
      count5 = 122708;
      count6 = 117302;
      count7 = 41123;
      count8 = 38166;
      count9 = 1045;
      dark-bcolor = [ "0.000" "0.000" "0.000" ];
      dark-bgcolor = [ "0.017" "0.017" "0.017" ];
      dark-bgcolor-wmax = [ "0.017" "0.017" "0.017" ];
      dark-bgcolor2 = [ "0.753" "0.380" "0.796" ];
      dark-bguri = "file:///run/current-system/sw/share/backgrounds/gnome/neogeo-d.jxl";
      dark-boxcolor = [ "0.017" "0.017" "0.017" ];
      dark-dbgcolor = [ "0.017" "0.017" "0.017" ];
      dark-mbcolor = [ "0.000" "0.000" "0.000" ];
      dark-mbgcolor = [ "0.017" "0.017" "0.017" ];
      dark-mhcolor = [ "0.000" "0.000" "0.000" ];
      dark-mscolor = [ "0.000" "0.000" "0.000" ];
      dark-mshcolor = [ "0.000" "0.000" "0.000" ];
      dark-palette1 = [ "83" "83" "99" ];
      dark-palette10 = [ "100" "115" "123" ];
      dark-palette11 = [ "172" "154" "132" ];
      dark-palette12 = [ "164" "84" "72" ];
      dark-palette2 = [ "180" "121" "77" ];
      dark-palette3 = [ "202" "202" "161" ];
      dark-palette4 = [ "139" "64" "75" ];
      dark-palette5 = [ "84" "52" "68" ];
      dark-palette6 = [ "101" "124" "124" ];
      dark-palette7 = [ "140" "164" "147" ];
      dark-palette8 = [ "140" "155" "145" ];
      dark-palette9 = [ "203" "164" "92" ];
      dashdock-style = "Custom";
      dbgcolor = [ "0.017" "0.017" "0.017" ];
      dbradius = 0.0;
      default-font = "Sans 12";
      disize = 40.0;
      gradient = false;
      height = 29.0;
      import-export = false;
      light-bguri = "file:///run/current-system/sw/share/backgrounds/gnome/neogeo-l.jxl";
      light-palette1 = [ "202" "193" "153" ];
      light-palette10 = [ "99" "97" "91" ];
      light-palette11 = [ "180" "116" "114" ];
      light-palette12 = [ "180" "124" "108" ];
      light-palette2 = [ "146" "183" "110" ];
      light-palette3 = [ "124" "155" "174" ];
      light-palette4 = [ "100" "140" "114" ];
      light-palette5 = [ "104" "104" "132" ];
      light-palette6 = [ "84" "68" "84" ];
      light-palette7 = [ "180" "124" "116" ];
      light-palette8 = [ "170" "124" "116" ];
      light-palette9 = [ "165" "189" "165" ];
      margin = 4.1;
      mbcolor = [ "0.000" "0.000" "0.000" ];
      mbgcolor = [ "0.017" "0.017" "0.017" ];
      menu-radius = 0.0;
      menustyle = true;
      mhcolor = [ "0.000" "0.000" "0.000" ];
      mscolor = [ "0.000" "0.000" "0.000" ];
      mshalpha = 0.0;
      mshcolor = [ "0.000" "0.000" "0.000" ];
      neon = false;
      palette1 = [ "83" "83" "99" ];
      palette10 = [ "100" "115" "123" ];
      palette11 = [ "172" "154" "132" ];
      palette12 = [ "164" "84" "72" ];
      palette2 = [ "180" "121" "77" ];
      palette3 = [ "202" "202" "161" ];
      palette4 = [ "139" "64" "75" ];
      palette5 = [ "84" "52" "68" ];
      palette6 = [ "101" "124" "124" ];
      palette7 = [ "140" "164" "147" ];
      palette8 = [ "140" "155" "145" ];
      palette9 = [ "203" "164" "92" ];
      pause-reload = false;
      reloadstyle = false;
      set-overview = false;
      shadow = false;
      shalpha = 0.14;
      trigger-reload = true;
    };

    "org/gnome/shell/extensions/window-list" = {
      display-all-workspaces = false;
      embed-previews = true;
      grouping-mode = "never";
      show-on-all-monitors = true;
    };

    "org/gnome/shell/extensions/workspace-indicator" = {
      embed-previews = false;
    };

    "org/gnome/shell/keybindings" = {
      show-screenshot-ui = [ "<Super>s" ];
      switch-to-application-1 = [];
      switch-to-application-2 = [];
      switch-to-application-3 = [];
      switch-to-application-4 = [];
      switch-to-application-5 = [];
      switch-to-application-6 = [];
      switch-to-application-7 = [];
      switch-to-application-8 = [];
      switch-to-application-9 = [];
    };

    "org/gnome/shell/world-clocks" = {
      locations = [];
    };

    "org/gtk/gtk4/settings/color-chooser" = {
      custom-colors = [ (mkTuple [ 0.753 0.38 0.796 1.0 ]) (mkTuple [ 0.0 0.7 0.75 1.0 ]) (mkTuple [ 1.6667e-2 1.6667e-2 1.6667e-2 1.0 ]) (mkTuple [ 0.125 0.125 0.125 1.0 ]) ];
      selected-color = mkTuple [ true 1.6667e-2 1.6667e-2 1.6667e-2 1.0 ];
    };

    "org/gtk/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 157;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      window-position = mkTuple [ 679 246 ];
      window-size = mkTuple [ 1203 902 ];
    };

  };
}
