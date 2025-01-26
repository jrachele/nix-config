{pkgs, ...}: {
  home.packages = with pkgs; [
    dconf2nix
    dconf-editor
    helix
    zellij
    syncthing
    obs-studio
    musescore
  ];
}
