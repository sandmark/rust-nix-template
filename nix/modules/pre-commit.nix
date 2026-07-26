{inputs, ...}: {
  imports = [
    (inputs.git-hooks + /flake-module.nix)
  ];
  perSystem = {
    config,
    self',
    pkgs,
    lib,
    ...
  }: {
    pre-commit.settings = {
      package = pkgs.prek;
      hooks = {
        alejandra.enable = true;
        end-of-file-fixer.enable = true;
        mixed-line-endings = {
          enable = true;
          args = ["--fix=lf"];
        };
        rustfmt.enable = true;
        trim-trailing-whitespace.enable = true;
      };
    };
  };
}
