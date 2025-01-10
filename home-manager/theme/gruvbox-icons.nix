{pkgs, ...}:
pkgs.stdenv.mkDerivation {
  name = "gruvbox-plus";

  src = pkgs.fetchurl {
    url = "https://github.com/SylEleuth/gruvbox-plus-icon-pack/releases/download/v6.1.0/gruvbox-plus-icon-pack-6.1.0.zip";
    sha256 = "sha256-u86B74803TScbgtgZR3Tu0XuA5KMVI0+F71SYGrPbrQ=";
  };

  dontUnpack = true;
  installPhase = ''
    mkdir -p $out
    ${pkgs.unzip}/bin/unzip $src -d $out/
  '';
}
