{ pkgs, ... }:
{

  home.packages = with pkgs; [
    # required by telescope
    ripgrep
    fd

    # required for serveral icons
    nerdfonts
  ];

  # nixvim as default editor
  programs.bash = {
      enable = true;
      sessionVariables.EDITOR = "nvim";
  };

  programs.nixvim = import ./config;
}
