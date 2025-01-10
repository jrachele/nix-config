{pkgs, ...}: {
  home.packages = with pkgs; [
    dconf2nix
    dconf-editor
    zellij
  ];
}
