{config, ...}: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = let
      flakeDir = "~/nix";
    in {
      rb = "sudo nixos-rebuild switch --flake ${flakeDir}";
      upd = "nix flake update ${flakeDir}";
      upg = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}";

      hms = "dconf-gen && home-manager switch --flake ${flakeDir}";

      conf = "nvim ${flakeDir}";
      pkgs = "nvim ${flakeDir}/nixos/packages.nix";

      ll = "ls -l";
      v = "nvim";
      se = "sudoedit";
      ff = "fastfetch";
      dconf-gen = "${flakeDir}/home-manager/generate_dconf_nix.sh";
    };

    history.size = 10000;
    history.path = "${config.xdg.dataHome}/zsh/history";

    #oh-my-zsh = {
    #  enable = true;
    #  plugins = [ "git" "sudo" ];
    #  theme = "agnoster"; # blinks is also really nice
    #};

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
}
