{pkgs}: {
  FONTCONFIG_FILE = with pkgs;
    makeFontsConf {
      fontDirectories = [freefont_ttf];
    };

  packages = with pkgs; [
    deadnix
    fd
    flake-checker
    gh
    gyre-fonts
    just
    lilypond-unstable-with-fonts
    lychee
    nushell
    pre-commit
    python312Packages.pre-commit-hooks
    ripgrep
    statix
    tokei
    watchexec
    zathura
    zellij
  ];
}
