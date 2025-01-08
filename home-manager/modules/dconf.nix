# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "org/gnome/Console" = {
      last-window-maximised = false;
      last-window-size = mkTuple [ 1815 964 ];
    };

    "org/gnome/Extensions" = {
      window-height = 1083;
      window-width = 1240;
    };

    "org/gnome/control-center" = {
      last-panel = "wifi";
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
    };

    "org/gnome/desktop/notifications" = {
      application-children = [ "org-gnome-console" ];
    };

    "org/gnome/desktop/notifications/application/org-gnome-console" = {
      application-id = "org.gnome.Console.desktop";
    };

    "org/gnome/desktop/peripherals/keyboard" = {
      numlock-state = true;
    };

    "org/gnome/desktop/peripherals/mouse" = {
      accel-profile = "flat";
      speed = 0.49612403100775193;
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
      toggle-maximized = [];
      toggle-on-all-workspaces = [];
      unmaximize = [];
    };

    "org/gnome/desktop/wm/preferences" = {
      num-workspaces = 10;
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
    };

    "org/gnome/mutter" = {
      dynamic-workspaces = false;
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
      home = [ "<Super>bracketright" ];
      search = [ "<Super>d" ];
      www = [ "<Super>backslash" ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Super>Return";
      command = "kitty";
      name = "Open Terminal";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
      binding = "<Super>e";
      command = "kitty nvim";
      name = "Open Terminal";
    };

    "org/gnome/shell" = {
      disabled-extensions = [ "light-style@gnome-shell-extensions.gcampax.github.com" "windowsNavigator@gnome-shell-extensions.gcampax.github.com" "workspace-indicator@gnome-shell-extensions.gcampax.github.com" "drive-menu@gnome-shell-extensions.gcampax.github.com" "status-icons@gnome-shell-extensions.gcampax.github.com" "auto-move-windows@gnome-shell-extensions.gcampax.github.com" "apps-menu@gnome-shell-extensions.gcampax.github.com" "places-menu@gnome-shell-extensions.gcampax.github.com" ];
      enabled-extensions = [ "user-theme@gnome-shell-extensions.gcampax.github.com" "system-monitor@gnome-shell-extensions.gcampax.github.com" "window-list@gnome-shell-extensions.gcampax.github.com" ];
      welcome-dialog-last-shown-version = "47.2";
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

  };
}
