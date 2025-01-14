{pkgs, ...}: {
  home.packages = with pkgs; [
    dconf2nix
    dconf-editor
    helix
    zellij
    ghostty
    emacs
  ];
}
