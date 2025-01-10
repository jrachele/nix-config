{pkgs, ...}: {
  programs.kitty = {
    enable = true;
    settings = {
      confirm_os_window_close = 0;
      dynamic_background_opacity = true;
      background_opacity = "0.5";
      background_blur = 5;
      hide_window_decorations = true;
    };
    font.package = pkgs.nerd-fonts.fira-code;
    font.name = "FiraCode Nerd Font";
  };
}
