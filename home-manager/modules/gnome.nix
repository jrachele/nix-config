{ pkgs, ... }:

{
	home.packages = with pkgs; [
		gnomeExtensions.open-bar
	];
}
