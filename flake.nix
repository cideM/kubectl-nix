{
  description = "Past versions of kubectl for easy installation";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [
            (self: super: {
              moreutils = super.moreutils.overrideAttrs (old: {
                postInstall = old.postInstall + ''
                  rm $out/bin/parallel
                '';
              });
            })

            (self: super: {
              kubernetes-1_22_2 = super.kubernetes.overrideAttrs
                (old: {
                  version = "1.22.2";
                  unpackPhase = ''
                    tar xf $src --strip-components=1
                  '';
                  src = builtins.fetchurl {
                    sha256 = hashes."v1.22.2".hash;
                    url = hashes."v1.22.2".tarball_url;
                  };
                  WHAT = "cmd/kubectl";
                });
            })
          ];
        };

        hashes = pkgs.lib.trivial.importJSON ./hashes.json;
      in
      rec {
        packages = flake-utils.lib.flattenTree {
          inherit (pkgs) kubernetes-1_22_2;
        };
        defaultPackage = packages.kubernetes-1_22_2;
        apps = {
          # kubernetes-1_22_2 = flake-utils.lib.mkApp { drv = packages.kubernetes-1_22_2; };
        };
        # defaultApp = apps.kubernetes-1_22_2;
        devShell = pkgs.mkShell {
          buildInputs = with pkgs; [
            coreutils
            moreutils
            parallel
            fish
          ];
        };
      }
    );
}
