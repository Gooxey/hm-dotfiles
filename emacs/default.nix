{ pkgs, ... }:
{
  programs.emacs.enable = true;
  services.emacs = {
    enable = true;
    client = {
      enable = true;
      arguments = [ "-c" ];
    };
  };

  xdg.configFile.doom.source = ./config/doom;

  programs.java.enable = true;
  home.packages = with pkgs; [
    nixfmt-rfc-style
    shellcheck
    pandoc

    # vterm
    gcc
    libtool
    cmake

    # :lang python
    isort
    pipenv
    python312Packages.pytest
    python312Packages.nose

    # :lang rust
    rust-analyzer
    cargo
    rustc

    # :lang zig
    zig
    zls
  ];
}
