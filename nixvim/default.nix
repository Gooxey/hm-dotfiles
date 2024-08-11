{ pkgs, ... }:
{

  home.packages = with pkgs; [
    # required by telescope
    ripgrep
    fd

    # required for serveral icons
    # used way too much ram
    # nerdfonts
  ];

  programs.nixvim = import ./config;
}
