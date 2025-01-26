{pkgs, ...}: {
  services.syncthing = {
    enable = true;
    package = pkgs.syncthing;
    settings = {
      devices = {
        "s24" = {id = "SH6OCVP-F2CNVQ2-ILMWPDP-YQXFAII-3C73PND-YGMRGMH-P6IIJEM-PHBLTAG";};
      };
      folders = {
        "Obsidian" = {
          path = "/home/juge/Obsidian";
          devices = ["s24"];
          versioning = {
            type = "simple";
            params = {
              keep = "10";
            };
          };
        };
      };
    };
  };
}
