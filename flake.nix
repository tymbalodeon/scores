{
  description = "scores";
  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

  outputs = {nixpkgs, ...}: let
    supportedSystems = [
      "aarch64-darwin"
      "aarch64-linux"
      "x86_64-darwin"
      "x86_64-linux"
    ];

    forEachSupportedSystem = f:
      nixpkgs.lib.genAttrs supportedSystems (system:
        f {
          pkgs = import nixpkgs {inherit system;};
        });
  in {
    devShells = forEachSupportedSystem ({pkgs}: {
      default = pkgs.mkShell {
        FONTCONFIG_FILE = pkgs.makeFontsConf {
          fontDirectories = [pkgs.freefont_ttf];
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
          zellij
        ];
      };
    });
  };
}
