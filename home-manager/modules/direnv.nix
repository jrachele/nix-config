{pkgs, ...}: {
  programs.direnv = {
    enable = true;
    package = pkgs.direnv;
    #loadInNixShell = false;
    enableZshIntegration = true;
  };
}
