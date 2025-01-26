{pkgs, ...}: {
  home.packages = with pkgs; [
    gnomeExtensions.open-bar
    gnomeExtensions.dash-to-dock
    gnomeExtensions.focus-changer
    gnomeExtensions.appindicator
  ];
}
