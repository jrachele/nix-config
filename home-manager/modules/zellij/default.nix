{pkgs, ...}: {
  programs.zellij = {
    enable = true;
    package = pkgs.zellij;
  };

  xdg.configFile."zellij".source = ./config;
}
