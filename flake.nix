{
  description = "Past versions of kubectl for easy installation";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nixpkgs_1_5_2.flake = false;
    nixpkgs_1_5_2.url = "github:nixos/nixpkgs/061ff21bbf5ca1df9f956756c923613e0e7301d5";
    nixpkgs_1_13_1.flake = false;
    nixpkgs_1_13_1.url = "github:nixos/nixpkgs/18347fc05ca662c96c6fd85bd830d86da32981e0";
    nixpkgs_1_14_0.flake = false;
    nixpkgs_1_14_0.url = "github:nixos/nixpkgs/f2e7456aaad20c2768e0400ff2e8ee5a033448ab";
    nixpkgs_1_15_3.flake = false;
    nixpkgs_1_15_3.url = "github:nixos/nixpkgs/7b8fb5c06cc28a9ed2bbe605de44570ad6c8fecc";
    nixpkgs_1_15_4.flake = false;
    nixpkgs_1_15_4.url = "github:nixos/nixpkgs/b21a3356f01b59992432a907f17e66abc77f17a0";
    nixpkgs_1_18_6.flake = false;
    nixpkgs_1_18_6.url = "github:nixos/nixpkgs/366cef3611779a6e5183cd19b55c1a5f9b408513";
    nixpkgs_1_18_8.flake = false;
    nixpkgs_1_18_8.url = "github:nixos/nixpkgs/ee75577c3ddffcd1ed0ee422a28672248bee0959";
    nixpkgs_1_19_1.flake = false;
    nixpkgs_1_19_1.url = "github:nixos/nixpkgs/9210c8e8ed1cc33931bac44eb89d62a78f7e4a67";
    nixpkgs_1_19_3.flake = false;
    nixpkgs_1_19_3.url = "github:nixos/nixpkgs/c1fa77505860e78ec3ff0c742dd0739eddf47674";
    nixpkgs_1_20_4.flake = false;
    nixpkgs_1_20_4.url = "github:nixos/nixpkgs/7b5c38e97384257a03ec29e9eec56e2a46a07816";
    nixpkgs_1_21_2.flake = false;
    nixpkgs_1_21_2.url = "github:nixos/nixpkgs/9fb4ba960ac374df9ba278bc2304a2cb6356d84d";
    nixpkgs_1_22_4.flake = false;
    nixpkgs_1_22_4.url = "github:nixos/nixpkgs/535c1e5a72e1bf15b71ed1a59de84a9ae7a0eb91";
    v1_23_0.url = "github:kubernetes/kubernetes?ref=v1.23.0";
    v1_23_0.flake = false;
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    { self
    , nixpkgs
    , nixpkgs_1_5_2
    , nixpkgs_1_13_1
    , nixpkgs_1_14_0
    , nixpkgs_1_15_3
    , nixpkgs_1_15_4
    , nixpkgs_1_18_6
    , nixpkgs_1_18_8
    , nixpkgs_1_19_1
    , nixpkgs_1_19_3
    , nixpkgs_1_20_4
    , nixpkgs_1_21_2
    , nixpkgs_1_22_4
    , v1_23_0
    , flake-utils
    }:

    flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = import nixpkgs {
        inherit system;
      };

      nixpkgs_1_22_4_modified = import nixpkgs_1_22_4 {
        inherit system;
        overlays = [
          (self: super: {
            "1_23_0" = (super.kubernetes.override ({
              go = super.go_1_17;
            })).overrideAttrs (old: {
              version = "v1.23.0";
              src = v1_23_0;
              WHAT = "cmd/kubectl";
            });
          })
        ];
      };

    in
    rec {
      packages = flake-utils.lib.flattenTree {
        # Not supported because of dylib stuff
        # "1_5_2" = (import nixpkgs_1_5_2 {
        #   system = if system == "aarch64-darwin" then "x86_64-darwin" else system;
        # }).pkgs.kubernetes;
        # "1_13_1" = (import nixpkgs_1_13_1 { inherit system; }).pkgs.kubectl;
        "1_14_0" = (import nixpkgs_1_14_0 { inherit system; }).pkgs.kubectl;
        "1_15_3" = (import nixpkgs_1_15_3 { inherit system; }).pkgs.kubectl;
        "1_15_4" = (import nixpkgs_1_15_4 { inherit system; }).pkgs.kubectl;
        "1_18_6" = (import nixpkgs_1_18_6 { inherit system; }).pkgs.kubectl;
        "1_18_8" = (import nixpkgs_1_18_8 { inherit system; }).pkgs.kubectl;
        "1_19_1" = (import nixpkgs_1_19_1 { inherit system; }).pkgs.kubectl;
        "1_19_3" = (import nixpkgs_1_19_3 { inherit system; }).pkgs.kubectl;
        "1_20_4" = (import nixpkgs_1_20_4 { inherit system; }).pkgs.kubectl;
        "1_21_2" = (import nixpkgs_1_21_2 { inherit system; }).pkgs.kubectl;
        "1_22_4" = (import nixpkgs_1_22_4 { inherit system; }).pkgs.kubectl;
        "1_23_0" = nixpkgs_1_22_4_modified.pkgs."1_23_0";
      };
      devShell = pkgs.mkShell {
        buildInputs = with pkgs; [
          coreutils
          fish
          lua5_4
        ];
      };
    });
}
