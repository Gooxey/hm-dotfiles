{
  imports = [
    ./nixvim
    ./bash.nix
  ];

  # let home manager install and manage itself
  programs.home-manager.enable = true;
  services.home-manager.autoUpgrade = {
    enable = true;
    frequency = "daily";
  };

  home = {
    username = "dennis";
    homeDirectory = "/home/dennis";

    stateVersion = "24.05";
  };
  
  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";
}
