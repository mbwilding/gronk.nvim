{
  description = "Gronk colour scheme";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs =
    { self, nixpkgs }:
    let
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];
      forAllSystems = f: nixpkgs.lib.genAttrs systems (system: f nixpkgs.legacyPackages.${system});
    in
    {
      packages = forAllSystems (pkgs: rec {
        gronk-vscode = pkgs.vscode-utils.buildVscodeExtension (finalAttrs: {
          pname = "gronk-theme";
          vscodeExtPublisher = "mbwilding";
          vscodeExtName = "gronk-theme";
          vscodeExtUniqueId = "mbwilding.gronk-theme";
          version = (builtins.fromJSON (builtins.readFile ./vscode/package.json)).version;
          src = ./vscode;
          dontUnpack = true;
          installPhase = ''
            runHook preInstall
            mkdir -p $out/share/vscode/extensions/mbwilding.gronk-theme
            cp -r $src/. $out/share/vscode/extensions/mbwilding.gronk-theme/
            runHook postInstall
          '';
          meta = {
            description = "Gronk dark theme for VSCode";
            homepage = "https://github.com/mbwilding/gronk.nvim";
            license = pkgs.lib.licenses.mit;
          };
        });
        default = gronk-vscode;
      });

      overlays.default = final: _prev: {
        gronk-vscode = self.packages.${final.stdenv.hostPlatform.system}.gronk-vscode;
      };
    };
}
