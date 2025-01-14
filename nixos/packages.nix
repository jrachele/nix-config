{pkgs, ...}: {
  #nixpkgs.config = {
  #  allowUnfree = true;
  #  permittedInsecurePackages = [];
  #};

  environment.systemPackages = with pkgs; [
    # terminal
    kitty
    zsh-autosuggestions
    zsh-prezto

    # utils
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
    fzf

    # coding
    neovim
    jetbrains.rust-rover
    gnumake
    gcc
    lldb
    (python3.withPackages (ps: with ps; [requests]))

    # productivity/social
    obs-studio
    discord
    obsidian

    nix-search-cli
    mission-center

    #entertainment
    vlc
    jellyfin
    jellyfin-web

    # Music
    youtube-music
    bitwig-studio5-latest
    yabridge
    yabridgectl

    # Wayland stuff
    wayland
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
