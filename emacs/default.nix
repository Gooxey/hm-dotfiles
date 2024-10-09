{ pkgs, config, ... }:
{
  programs.emacs.enable = true;
  services.emacs = {
    enable = true;
    client = {
      enable = true;
      arguments = [ "-c" ];
    };
  };

  home.activation.linkMyFiles = config.lib.dag.entryAfter ["writeBoundry"] ''
    if [ ! -e $HOME/.config/doom ]; then
      ln -s $HOME/hm-dotfiles/emacs/config/doom $HOME/.config
    fi
  '';

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
