{ config, pkgs, lib, nixpkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "juge";
  home.homeDirectory = "/home/juge";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "23.11"; # Please read the comment before changing.

  nixpkgs.config.allowUnfree = true;
  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs;[
    #dev
    kitty
    zsh-autosuggestions
    zsh-prezto
    fira-code-nerdfont
    rofi-wayland

    #util
    firefox
    mullvad-vpn
    _1password-gui

    # productivity
    bitwig-studio
    yabridge
    yabridgectl
    anki
    davinci-resolve

    #entertainment
    spotify
    vlc
    jellyfin
    jellyfin-web

    # work stuff
    slack
    vmware-horizon-client
    zoom-us

    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    # pkgs.hello

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];

  programs.eww = {
    enable = true;
    configDir = ./config/eww;
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableAutosuggestions = true;
    syntaxHighlighting.enable = true;
    prezto = {
      enable = true;
      prompt.theme = "pure";
      pmodules = [
        "environment"
        "terminal"
        "editor"
        "history"
        "directory"
        "spectrum"
        "utility"
        "completion"
        "prompt"
        "git"
      ];
    };
  };

  programs.kitty = {
    enable = true;
    font.package = pkgs.fira-code-nerdfont;
    font.name = "FiraCode Nerd Font";
    theme = "Catppuccin-Macchiato";
  };

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. If you don't want to manage your shell through Home
  # Manager then you have to manually source 'hm-session-vars.sh' located at
  # either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/juge/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  wayland.windowManager.hyprland = {
    enable = false;
    systemd.enable = true;
    extraConfig = builtins.readFile ./config/hyprland.conf;
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Custom keybindings for GNOME
  dconf = {
    settings =
      let
        custom_keybinds = [
          {
            binding = "<Super>Return";
            command = "kitty";
            name = "Open Terminal";
          }

          {
            binding = "<Super>e";
            command = "kitty nvim";
            name = "Open Terminal";
          }

          #{
          #  binding = "<Super>d";
          #  command = "rofi";
          #  name = "Open Rofi";
          #}

        ];

        # There's probably a better way to do this...
        indices = builtins.genList (x: x) (builtins.length custom_keybinds);

        customBindings = builtins.listToAttrs (builtins.map
          (binding: {
            name = "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom${toString binding.fst}";
            value = binding.snd;
          })
          (
            lib.lists.zipLists
              indices
              custom_keybinds
          ));

        otherAttributes = {
          "org/gnome/desktop/wm/keybindings" = {

            activate-window-menu = [ ];
            always-on-top = [ ];
            begin-move = [ ];
            begin-resize = [ ];
            close = [ "<Super>q" ];
            cycle-group = [ ];
            cycle-group-backward = [ ];
            cycle-panels = [ ];
            cycle-panels-backward = [ ];
            cycle-windows = [ ];
            cycle-windows-backward = [ ];
            lower = [ ];
            maximize = [ ];
            maximize-horizontally = [ ];
            maximize-vertically = [ ];
            minimize = [ ];
            move-to-center = [ ];
            move-to-corner-ne = [ ];
            move-to-corner-nw = [ ];
            move-to-corner-se = [ ];
            move-to-corner-sw = [ ];
            move-to-monitor-down = [ ];
            move-to-monitor-left = [ ];
            move-to-monitor-right = [ ];
            move-to-monitor-up = [ ];
            move-to-side-e = [ ];
            move-to-side-n = [ ];
            move-to-side-s = [ ];
            move-to-side-w = [ ];
            move-to-workspace-1 = [ "<Shift><Super>1" ];
            move-to-workspace-2 = [ "<Shift><Super>2" ];
            move-to-workspace-3 = [ "<Shift><Super>3" ];
            move-to-workspace-4 = [ "<Shift><Super>4" ];
            move-to-workspace-5 = [ "<Shift><Super>5" ];
            move-to-workspace-6 = [ "<Shift><Super>6" ];
            move-to-workspace-7 = [ "<Shift><Super>7" ];
            move-to-workspace-8 = [ "<Shift><Super>8" ];
            move-to-workspace-9 = [ "<Shift><Super>9" ];
            move-to-workspace-10 = [ "<Shift><Super>10" ];
            move-to-workspace-11 = [ "<Shift><Super>11" ];
            move-to-workspace-12 = [ "<Shift><Super>12" ];
            move-to-workspace-down = [ ];
            move-to-workspace-last = [ ];
            move-to-workspace-left = [ ];
            move-to-workspace-right = [ ];
            move-to-workspace-up = [ ];
            panel-main-menu = [ ];
            panel-run-dialog = [ ];
            raise = [ ];
            raise-or-lower = [ ];
            set-spew-mark = [ ];
            show-desktop = [ ];
            switch-applications = [ ];
            switch-applications-backward = [ ];
            switch-group = [ ];
            switch-group-backward = [ ];
            switch-input-source = [ ];
            switch-input-source-backward = [ ];
            switch-panels = [ ];
            switch-panels-backward = [ ];
            switch-to-workspace-1 = [ "<Super>1" ];
            switch-to-workspace-2 = [ "<Super>2" ];
            switch-to-workspace-3 = [ "<Super>3" ];
            switch-to-workspace-4 = [ "<Super>4" ];
            switch-to-workspace-5 = [ "<Super>5" ];
            switch-to-workspace-6 = [ "<Super>6" ];
            switch-to-workspace-7 = [ "<Super>7" ];
            switch-to-workspace-8 = [ "<Super>8" ];
            switch-to-workspace-9 = [ "<Super>9" ];
            switch-to-workspace-10 = [ "<Super>10" ];
            switch-to-workspace-11 = [ "<Super>11" ];
            switch-to-workspace-12 = [ "<Super>12" ];
            switch-to-workspace-down = [ ];
            switch-to-workspace-last = [ ];
            switch-to-workspace-left = [ ];
            switch-to-workspace-right = [ ];
            switch-to-workspace-up = [ ];
            switch-windows = [ ];
            switch-windows-backward = [ ];
            toggle-above = [ ];
            toggle-fullscreen = [ ];
            toggle-maximized = [ ];
            toggle-on-all-workspaces = [ ];
            unmaximize = [ ];
          };

          "org/gnome/shell/keybindings" = {
            switch-to-application-1 = [ ];
            switch-to-application-2 = [ ];
            switch-to-application-3 = [ ];
            switch-to-application-4 = [ ];
            switch-to-application-5 = [ ];
            switch-to-application-6 = [ ];
            switch-to-application-7 = [ ];
            switch-to-application-8 = [ ];
            switch-to-application-9 = [ ];
            show-screenshot-ui = [ "<Super>s" ];
          };

          "org/gnome/settings-daemon/plugins/media-keys" = {
            search = [ "<Super>d" ];
            home = [ "<Super>bracketright" ];
            www = [ "<Super>backslash" ];
          };
        };
        result = customBindings // otherAttributes;
      in
      result;

  };
}
