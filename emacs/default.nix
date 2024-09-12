{ pkgs, ... }:
{
  programs.emacs.enable = true;

  xdg.configFile.doom.source = ./config/doom;

  programs.java.enable = true;
  home.packages = with pkgs; [
    pandoc

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
