{
  description = "React project";

  # Use the unstable nixpkgs to use the latest set of node packages
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/master";

  # Use pnpm with a recent version of node.js
  inputs.node-overlay.url = "github:akirak/node-packages-overlay";

  outputs = {
    self,
    nixpkgs,
    flake-utils,
    node-overlay,
  }:
    {
      templates.default = {
        path = ./.;
        description = "React SPA project";
      };
    }
    // flake-utils.lib.eachDefaultSystem
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
