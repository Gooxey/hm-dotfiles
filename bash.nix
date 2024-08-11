{ pkgs, ... }: {
  home.packages = with pkgs; [
    eza
  ];

  # fancy inputs
  programs.starship.enable = true;
  programs.bash = {
    enable = true;

    shellAliases = {
        vi = "nvim .";
        ll = "eza -l";
        la = "eza -la";
        ls = "eza";
    };

    sessionVariables = {
      EDITOR = "nvim";
    };
    
    profileExtra = ''
      # added by Nix installer
      if [ -e /home/dennis/.nix-profile/etc/profile.d/nix.sh ]; then
        . /home/dennis/.nix-profile/etc/profile.d/nix.sh
      fi
    '';
  };
}
