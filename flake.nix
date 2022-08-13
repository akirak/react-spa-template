{
  description = "Your next node.js project";

  # Use the unstable nixpkgs to use the latest set of node packages
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/master";

  # Use pnpm with a recent version of node.js
  inputs.node-overlay.url = "sourcehut:~akirak/node-packages-overlay";

  outputs = {
    self,
    nixpkgs,
    flake-utils,
    node-overlay,
  }:
    flake-utils.lib.eachDefaultSystem
    (system: let
      pkgs = import nixpkgs {
        inherit system;
        overlays = [
          node-overlay.overlays.node-18
        ];
      };
    in {
      devShells.default = pkgs.mkShell {
        buildInputs = [
          pkgs.nodePackages.pnpm
          pkgs.nodePackages.pnpm.nodejs
          pkgs.nodePackages.typescript
          pkgs.nodePackages.typescript-language-server
          pkgs.nodePackages.prettier
          pkgs.nodePackages.eslint
        ];
      };
    });
}
