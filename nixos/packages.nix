{pkgs, ...}: {
  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = [];
  };

  environment.systemPackages = with pkgs; [
    # terminal
    kitty
    zsh-autosuggestions
    zsh-prezto

    # utils
    neofetch
    file
    tree
    wget
    git
    fastfetch
    htop
    nix-index
    unzip
    ffmpeg
    ranger
    lazygit
    rofi
    wofi

    # coding
    neovim
    jetbrains.rust-rover
    gnumake
    gcc
    lldb
    (python3.withPackages (ps: with ps; [requests]))
    zig
    zls

    glfw-wayland
    wayland
    wayland-protocols
    xorg.libX11
    xorg.libXcursor
    xorg.libXi
    xorg.libXinerama
    xorg.libXrandr
    xorg.libXxf86vm

    # productivity/social
    obs-studio
    discord
    obsidian

    #entertainment
    vlc
    jellyfin
    jellyfin-web

    # Music
    youtube-music
    bitwig-studio
    yabridge
    yabridgectl

    # Wayland stuff
    xwayland
    wl-clipboard
    cliphist

    # Other
    _1password-gui
    home-manager
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-emoji
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
    nerd-fonts.symbols-only
  ];
}
