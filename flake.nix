# TODO
# - Generate one modern and one older release, make sure to switch to
#   x86_64-darwin at some point
# - Got to sort releases by SemVer so I can just define a cutoff point after
#   which to switch back to aarch64-darwin
{
  description = "Past versions of kubectl for easy installation";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    v1_23_0.url = "github:kubernetes/kubernetes?ref=v1.23.0";
    v1_23_0.flake = false;
    v1_22_4.url = "github:kubernetes/kubernetes?ref=v1.22.4";
    v1_22_4.flake = false;
    v1_22_3.url = "github:kubernetes/kubernetes?ref=v1.22.3";
    v1_22_3.flake = false;
    v1_22_2.url = "github:kubernetes/kubernetes?ref=v1.22.2";
    v1_22_2.flake = false;
    v1_22_1.url = "github:kubernetes/kubernetes?ref=v1.22.1";
    v1_22_1.flake = false;
    v1_22_0.url = "github:kubernetes/kubernetes?ref=v1.22.0";
    v1_22_0.flake = false;
    v1_21_7.url = "github:kubernetes/kubernetes?ref=v1.21.7";
    v1_21_7.flake = false;
    v1_21_6.url = "github:kubernetes/kubernetes?ref=v1.21.6";
    v1_21_6.flake = false;
    v1_21_5.url = "github:kubernetes/kubernetes?ref=v1.21.5";
    v1_21_5.flake = false;
    v1_21_4.url = "github:kubernetes/kubernetes?ref=v1.21.4";
    v1_21_4.flake = false;
    v1_21_3.url = "github:kubernetes/kubernetes?ref=v1.21.3";
    v1_21_3.flake = false;
    v1_21_2.url = "github:kubernetes/kubernetes?ref=v1.21.2";
    v1_21_2.flake = false;
    v1_21_1.url = "github:kubernetes/kubernetes?ref=v1.21.1";
    v1_21_1.flake = false;
    v1_21_0.url = "github:kubernetes/kubernetes?ref=v1.21.0";
    v1_21_0.flake = false;
    v1_20_13.url = "github:kubernetes/kubernetes?ref=v1.20.13";
    v1_20_13.flake = false;
    v1_20_12.url = "github:kubernetes/kubernetes?ref=v1.20.12";
    v1_20_12.flake = false;
    v1_20_11.url = "github:kubernetes/kubernetes?ref=v1.20.11";
    v1_20_11.flake = false;
    v1_20_10.url = "github:kubernetes/kubernetes?ref=v1.20.10";
    v1_20_10.flake = false;
    v1_20_9.url = "github:kubernetes/kubernetes?ref=v1.20.9";
    v1_20_9.flake = false;
    v1_20_8.url = "github:kubernetes/kubernetes?ref=v1.20.8";
    v1_20_8.flake = false;
    v1_20_7.url = "github:kubernetes/kubernetes?ref=v1.20.7";
    v1_20_7.flake = false;
    v1_20_6.url = "github:kubernetes/kubernetes?ref=v1.20.6";
    v1_20_6.flake = false;
    v1_20_5.url = "github:kubernetes/kubernetes?ref=v1.20.5";
    v1_20_5.flake = false;
    v1_20_4.url = "github:kubernetes/kubernetes?ref=v1.20.4";
    v1_20_4.flake = false;
    v1_20_3.url = "github:kubernetes/kubernetes?ref=v1.20.3";
    v1_20_3.flake = false;
    v1_20_2.url = "github:kubernetes/kubernetes?ref=v1.20.2";
    v1_20_2.flake = false;
    v1_20_1.url = "github:kubernetes/kubernetes?ref=v1.20.1";
    v1_20_1.flake = false;
    v1_20_0.url = "github:kubernetes/kubernetes?ref=v1.20.0";
    v1_20_0.flake = false;
    v1_19_16.url = "github:kubernetes/kubernetes?ref=v1.19.16";
    v1_19_16.flake = false;
    v1_19_15.url = "github:kubernetes/kubernetes?ref=v1.19.15";
    v1_19_15.flake = false;
    v1_19_14.url = "github:kubernetes/kubernetes?ref=v1.19.14";
    v1_19_14.flake = false;
    v1_19_13.url = "github:kubernetes/kubernetes?ref=v1.19.13";
    v1_19_13.flake = false;
    v1_19_12.url = "github:kubernetes/kubernetes?ref=v1.19.12";
    v1_19_12.flake = false;
    v1_19_11.url = "github:kubernetes/kubernetes?ref=v1.19.11";
    v1_19_11.flake = false;
    v1_19_10.url = "github:kubernetes/kubernetes?ref=v1.19.10";
    v1_19_10.flake = false;
    v1_19_9.url = "github:kubernetes/kubernetes?ref=v1.19.9";
    v1_19_9.flake = false;
    v1_19_8.url = "github:kubernetes/kubernetes?ref=v1.19.8";
    v1_19_8.flake = false;
    v1_19_7.url = "github:kubernetes/kubernetes?ref=v1.19.7";
    v1_19_7.flake = false;
    v1_19_6.url = "github:kubernetes/kubernetes?ref=v1.19.6";
    v1_19_6.flake = false;
    v1_19_5.url = "github:kubernetes/kubernetes?ref=v1.19.5";
    v1_19_5.flake = false;
    v1_19_4.url = "github:kubernetes/kubernetes?ref=v1.19.4";
    v1_19_4.flake = false;
    v1_19_3.url = "github:kubernetes/kubernetes?ref=v1.19.3";
    v1_19_3.flake = false;
    v1_19_2.url = "github:kubernetes/kubernetes?ref=v1.19.2";
    v1_19_2.flake = false;
    v1_19_1.url = "github:kubernetes/kubernetes?ref=v1.19.1";
    v1_19_1.flake = false;
    v1_19_0.url = "github:kubernetes/kubernetes?ref=v1.19.0";
    v1_19_0.flake = false;
    v1_18_20.url = "github:kubernetes/kubernetes?ref=v1.18.20";
    v1_18_20.flake = false;
    v1_18_19.url = "github:kubernetes/kubernetes?ref=v1.18.19";
    v1_18_19.flake = false;
    v1_18_18.url = "github:kubernetes/kubernetes?ref=v1.18.18";
    v1_18_18.flake = false;
    v1_18_17.url = "github:kubernetes/kubernetes?ref=v1.18.17";
    v1_18_17.flake = false;
    v1_18_16.url = "github:kubernetes/kubernetes?ref=v1.18.16";
    v1_18_16.flake = false;
    v1_18_15.url = "github:kubernetes/kubernetes?ref=v1.18.15";
    v1_18_15.flake = false;
    v1_18_14.url = "github:kubernetes/kubernetes?ref=v1.18.14";
    v1_18_14.flake = false;
    v1_18_13.url = "github:kubernetes/kubernetes?ref=v1.18.13";
    v1_18_13.flake = false;
    v1_18_12.url = "github:kubernetes/kubernetes?ref=v1.18.12";
    v1_18_12.flake = false;
    v1_18_10.url = "github:kubernetes/kubernetes?ref=v1.18.10";
    v1_18_10.flake = false;
    v1_18_9.url = "github:kubernetes/kubernetes?ref=v1.18.9";
    v1_18_9.flake = false;
    v1_18_8.url = "github:kubernetes/kubernetes?ref=v1.18.8";
    v1_18_8.flake = false;
    v1_18_6.url = "github:kubernetes/kubernetes?ref=v1.18.6";
    v1_18_6.flake = false;
    v1_18_5.url = "github:kubernetes/kubernetes?ref=v1.18.5";
    v1_18_5.flake = false;
    v1_18_4.url = "github:kubernetes/kubernetes?ref=v1.18.4";
    v1_18_4.flake = false;
    v1_18_3.url = "github:kubernetes/kubernetes?ref=v1.18.3";
    v1_18_3.flake = false;
    v1_18_2.url = "github:kubernetes/kubernetes?ref=v1.18.2";
    v1_18_2.flake = false;
    v1_18_1.url = "github:kubernetes/kubernetes?ref=v1.18.1";
    v1_18_1.flake = false;
    v1_18_0.url = "github:kubernetes/kubernetes?ref=v1.18.0";
    v1_18_0.flake = false;
    v1_17_17.url = "github:kubernetes/kubernetes?ref=v1.17.17";
    v1_17_17.flake = false;
    v1_17_16.url = "github:kubernetes/kubernetes?ref=v1.17.16";
    v1_17_16.flake = false;
    v1_17_15.url = "github:kubernetes/kubernetes?ref=v1.17.15";
    v1_17_15.flake = false;
    v1_17_14.url = "github:kubernetes/kubernetes?ref=v1.17.14";
    v1_17_14.flake = false;
    v1_17_13.url = "github:kubernetes/kubernetes?ref=v1.17.13";
    v1_17_13.flake = false;
    v1_17_12.url = "github:kubernetes/kubernetes?ref=v1.17.12";
    v1_17_12.flake = false;
    v1_17_11.url = "github:kubernetes/kubernetes?ref=v1.17.11";
    v1_17_11.flake = false;
    v1_17_9.url = "github:kubernetes/kubernetes?ref=v1.17.9";
    v1_17_9.flake = false;
    v1_17_8.url = "github:kubernetes/kubernetes?ref=v1.17.8";
    v1_17_8.flake = false;
    v1_17_7.url = "github:kubernetes/kubernetes?ref=v1.17.7";
    v1_17_7.flake = false;
    v1_17_6.url = "github:kubernetes/kubernetes?ref=v1.17.6";
    v1_17_6.flake = false;
    v1_17_5.url = "github:kubernetes/kubernetes?ref=v1.17.5";
    v1_17_5.flake = false;
    v1_17_4.url = "github:kubernetes/kubernetes?ref=v1.17.4";
    v1_17_4.flake = false;
    v1_17_3.url = "github:kubernetes/kubernetes?ref=v1.17.3";
    v1_17_3.flake = false;
    v1_17_2.url = "github:kubernetes/kubernetes?ref=v1.17.2";
    v1_17_2.flake = false;
    v1_17_1.url = "github:kubernetes/kubernetes?ref=v1.17.1";
    v1_17_1.flake = false;
    v1_17_0.url = "github:kubernetes/kubernetes?ref=v1.17.0";
    v1_17_0.flake = false;
    v1_16_15.url = "github:kubernetes/kubernetes?ref=v1.16.15";
    v1_16_15.flake = false;
    v1_16_14.url = "github:kubernetes/kubernetes?ref=v1.16.14";
    v1_16_14.flake = false;
    v1_16_13.url = "github:kubernetes/kubernetes?ref=v1.16.13";
    v1_16_13.flake = false;
    v1_16_12.url = "github:kubernetes/kubernetes?ref=v1.16.12";
    v1_16_12.flake = false;
    v1_16_11.url = "github:kubernetes/kubernetes?ref=v1.16.11";
    v1_16_11.flake = false;
    v1_16_10.url = "github:kubernetes/kubernetes?ref=v1.16.10";
    v1_16_10.flake = false;
    v1_16_9.url = "github:kubernetes/kubernetes?ref=v1.16.9";
    v1_16_9.flake = false;
    v1_16_8.url = "github:kubernetes/kubernetes?ref=v1.16.8";
    v1_16_8.flake = false;
    v1_16_7.url = "github:kubernetes/kubernetes?ref=v1.16.7";
    v1_16_7.flake = false;
    v1_16_6.url = "github:kubernetes/kubernetes?ref=v1.16.6";
    v1_16_6.flake = false;
    v1_16_5.url = "github:kubernetes/kubernetes?ref=v1.16.5";
    v1_16_5.flake = false;
    v1_16_4.url = "github:kubernetes/kubernetes?ref=v1.16.4";
    v1_16_4.flake = false;
    v1_16_3.url = "github:kubernetes/kubernetes?ref=v1.16.3";
    v1_16_3.flake = false;
    v1_16_2.url = "github:kubernetes/kubernetes?ref=v1.16.2";
    v1_16_2.flake = false;
    v1_16_1.url = "github:kubernetes/kubernetes?ref=v1.16.1";
    v1_16_1.flake = false;
    v1_16_0.url = "github:kubernetes/kubernetes?ref=v1.16.0";
    v1_16_0.flake = false;
    v1_15_12.url = "github:kubernetes/kubernetes?ref=v1.15.12";
    v1_15_12.flake = false;
    v1_15_11.url = "github:kubernetes/kubernetes?ref=v1.15.11";
    v1_15_11.flake = false;
    v1_15_10.url = "github:kubernetes/kubernetes?ref=v1.15.10";
    v1_15_10.flake = false;
    v1_15_9.url = "github:kubernetes/kubernetes?ref=v1.15.9";
    v1_15_9.flake = false;
    v1_15_8.url = "github:kubernetes/kubernetes?ref=v1.15.8";
    v1_15_8.flake = false;
    v1_15_7.url = "github:kubernetes/kubernetes?ref=v1.15.7";
    v1_15_7.flake = false;
    v1_15_6.url = "github:kubernetes/kubernetes?ref=v1.15.6";
    v1_15_6.flake = false;
    v1_15_5.url = "github:kubernetes/kubernetes?ref=v1.15.5";
    v1_15_5.flake = false;
    v1_15_4.url = "github:kubernetes/kubernetes?ref=v1.15.4";
    v1_15_4.flake = false;
    v1_15_3.url = "github:kubernetes/kubernetes?ref=v1.15.3";
    v1_15_3.flake = false;
    v1_15_2.url = "github:kubernetes/kubernetes?ref=v1.15.2";
    v1_15_2.flake = false;
    v1_15_1.url = "github:kubernetes/kubernetes?ref=v1.15.1";
    v1_15_1.flake = false;
    v1_15_0.url = "github:kubernetes/kubernetes?ref=v1.15.0";
    v1_15_0.flake = false;
    v1_14_10.url = "github:kubernetes/kubernetes?ref=v1.14.10";
    v1_14_10.flake = false;
    v1_14_9.url = "github:kubernetes/kubernetes?ref=v1.14.9";
    v1_14_9.flake = false;
    v1_14_8.url = "github:kubernetes/kubernetes?ref=v1.14.8";
    v1_14_8.flake = false;
    v1_14_7.url = "github:kubernetes/kubernetes?ref=v1.14.7";
    v1_14_7.flake = false;
    v1_14_6.url = "github:kubernetes/kubernetes?ref=v1.14.6";
    v1_14_6.flake = false;
    v1_14_5.url = "github:kubernetes/kubernetes?ref=v1.14.5";
    v1_14_5.flake = false;
    v1_14_4.url = "github:kubernetes/kubernetes?ref=v1.14.4";
    v1_14_4.flake = false;
    v1_14_3.url = "github:kubernetes/kubernetes?ref=v1.14.3";
    v1_14_3.flake = false;
    v1_14_2.url = "github:kubernetes/kubernetes?ref=v1.14.2";
    v1_14_2.flake = false;
    v1_14_1.url = "github:kubernetes/kubernetes?ref=v1.14.1";
    v1_14_1.flake = false;
    v1_14_0.url = "github:kubernetes/kubernetes?ref=v1.14.0";
    v1_14_0.flake = false;
    v1_13_12.url = "github:kubernetes/kubernetes?ref=v1.13.12";
    v1_13_12.flake = false;
    v1_13_11.url = "github:kubernetes/kubernetes?ref=v1.13.11";
    v1_13_11.flake = false;
    v1_13_10.url = "github:kubernetes/kubernetes?ref=v1.13.10";
    v1_13_10.flake = false;
    v1_13_9.url = "github:kubernetes/kubernetes?ref=v1.13.9";
    v1_13_9.flake = false;
    v1_13_8.url = "github:kubernetes/kubernetes?ref=v1.13.8";
    v1_13_8.flake = false;
    v1_13_7.url = "github:kubernetes/kubernetes?ref=v1.13.7";
    v1_13_7.flake = false;
    v1_13_6.url = "github:kubernetes/kubernetes?ref=v1.13.6";
    v1_13_6.flake = false;
    v1_13_5.url = "github:kubernetes/kubernetes?ref=v1.13.5";
    v1_13_5.flake = false;
    v1_13_4.url = "github:kubernetes/kubernetes?ref=v1.13.4";
    v1_13_4.flake = false;
    v1_13_3.url = "github:kubernetes/kubernetes?ref=v1.13.3";
    v1_13_3.flake = false;
    v1_13_2.url = "github:kubernetes/kubernetes?ref=v1.13.2";
    v1_13_2.flake = false;
    v1_13_1.url = "github:kubernetes/kubernetes?ref=v1.13.1";
    v1_13_1.flake = false;
    v1_13_0.url = "github:kubernetes/kubernetes?ref=v1.13.0";
    v1_13_0.flake = false;
    v1_12_10.url = "github:kubernetes/kubernetes?ref=v1.12.10";
    v1_12_10.flake = false;
    v1_12_9.url = "github:kubernetes/kubernetes?ref=v1.12.9";
    v1_12_9.flake = false;
    v1_12_8.url = "github:kubernetes/kubernetes?ref=v1.12.8";
    v1_12_8.flake = false;
    v1_12_7.url = "github:kubernetes/kubernetes?ref=v1.12.7";
    v1_12_7.flake = false;
    v1_12_6.url = "github:kubernetes/kubernetes?ref=v1.12.6";
    v1_12_6.flake = false;
    v1_12_5.url = "github:kubernetes/kubernetes?ref=v1.12.5";
    v1_12_5.flake = false;
    v1_12_4.url = "github:kubernetes/kubernetes?ref=v1.12.4";
    v1_12_4.flake = false;
    v1_12_3.url = "github:kubernetes/kubernetes?ref=v1.12.3";
    v1_12_3.flake = false;
    v1_12_2.url = "github:kubernetes/kubernetes?ref=v1.12.2";
    v1_12_2.flake = false;
    v1_12_1.url = "github:kubernetes/kubernetes?ref=v1.12.1";
    v1_12_1.flake = false;
    v1_12_0.url = "github:kubernetes/kubernetes?ref=v1.12.0";
    v1_12_0.flake = false;
    v1_11_10.url = "github:kubernetes/kubernetes?ref=v1.11.10";
    v1_11_10.flake = false;
    v1_11_9.url = "github:kubernetes/kubernetes?ref=v1.11.9";
    v1_11_9.flake = false;
    v1_11_8.url = "github:kubernetes/kubernetes?ref=v1.11.8";
    v1_11_8.flake = false;
    v1_11_7.url = "github:kubernetes/kubernetes?ref=v1.11.7";
    v1_11_7.flake = false;
    v1_11_6.url = "github:kubernetes/kubernetes?ref=v1.11.6";
    v1_11_6.flake = false;
    v1_11_5.url = "github:kubernetes/kubernetes?ref=v1.11.5";
    v1_11_5.flake = false;
    v1_11_4.url = "github:kubernetes/kubernetes?ref=v1.11.4";
    v1_11_4.flake = false;
    v1_11_3.url = "github:kubernetes/kubernetes?ref=v1.11.3";
    v1_11_3.flake = false;
    v1_11_2.url = "github:kubernetes/kubernetes?ref=v1.11.2";
    v1_11_2.flake = false;
    v1_11_1.url = "github:kubernetes/kubernetes?ref=v1.11.1";
    v1_11_1.flake = false;
    v1_11_0.url = "github:kubernetes/kubernetes?ref=v1.11.0";
    v1_11_0.flake = false;
    v1_10_13.url = "github:kubernetes/kubernetes?ref=v1.10.13";
    v1_10_13.flake = false;
    v1_10_12.url = "github:kubernetes/kubernetes?ref=v1.10.12";
    v1_10_12.flake = false;
    v1_10_11.url = "github:kubernetes/kubernetes?ref=v1.10.11";
    v1_10_11.flake = false;
    v1_10_10.url = "github:kubernetes/kubernetes?ref=v1.10.10";
    v1_10_10.flake = false;
    v1_10_9.url = "github:kubernetes/kubernetes?ref=v1.10.9";
    v1_10_9.flake = false;
    v1_10_8.url = "github:kubernetes/kubernetes?ref=v1.10.8";
    v1_10_8.flake = false;
    v1_10_7.url = "github:kubernetes/kubernetes?ref=v1.10.7";
    v1_10_7.flake = false;
    v1_10_6.url = "github:kubernetes/kubernetes?ref=v1.10.6";
    v1_10_6.flake = false;
    v1_10_5.url = "github:kubernetes/kubernetes?ref=v1.10.5";
    v1_10_5.flake = false;
    v1_10_4.url = "github:kubernetes/kubernetes?ref=v1.10.4";
    v1_10_4.flake = false;
    v1_10_3.url = "github:kubernetes/kubernetes?ref=v1.10.3";
    v1_10_3.flake = false;
    v1_10_2.url = "github:kubernetes/kubernetes?ref=v1.10.2";
    v1_10_2.flake = false;
    v1_10_1.url = "github:kubernetes/kubernetes?ref=v1.10.1";
    v1_10_1.flake = false;
    v1_10_0.url = "github:kubernetes/kubernetes?ref=v1.10.0";
    v1_10_0.flake = false;
    v1_9_11.url = "github:kubernetes/kubernetes?ref=v1.9.11";
    v1_9_11.flake = false;
    v1_9_10.url = "github:kubernetes/kubernetes?ref=v1.9.10";
    v1_9_10.flake = false;
    v1_9_9.url = "github:kubernetes/kubernetes?ref=v1.9.9";
    v1_9_9.flake = false;
    v1_9_8.url = "github:kubernetes/kubernetes?ref=v1.9.8";
    v1_9_8.flake = false;
    v1_9_7.url = "github:kubernetes/kubernetes?ref=v1.9.7";
    v1_9_7.flake = false;
    v1_9_6.url = "github:kubernetes/kubernetes?ref=v1.9.6";
    v1_9_6.flake = false;
    v1_9_5.url = "github:kubernetes/kubernetes?ref=v1.9.5";
    v1_9_5.flake = false;
    v1_9_4.url = "github:kubernetes/kubernetes?ref=v1.9.4";
    v1_9_4.flake = false;
    v1_9_3.url = "github:kubernetes/kubernetes?ref=v1.9.3";
    v1_9_3.flake = false;
    v1_9_2.url = "github:kubernetes/kubernetes?ref=v1.9.2";
    v1_9_2.flake = false;
    v1_9_1.url = "github:kubernetes/kubernetes?ref=v1.9.1";
    v1_9_1.flake = false;
    v1_9_0.url = "github:kubernetes/kubernetes?ref=v1.9.0";
    v1_9_0.flake = false;
    v1_8_15.url = "github:kubernetes/kubernetes?ref=v1.8.15";
    v1_8_15.flake = false;
    v1_8_14.url = "github:kubernetes/kubernetes?ref=v1.8.14";
    v1_8_14.flake = false;
    v1_8_13.url = "github:kubernetes/kubernetes?ref=v1.8.13";
    v1_8_13.flake = false;
    v1_8_12.url = "github:kubernetes/kubernetes?ref=v1.8.12";
    v1_8_12.flake = false;
    v1_8_11.url = "github:kubernetes/kubernetes?ref=v1.8.11";
    v1_8_11.flake = false;
    v1_8_10.url = "github:kubernetes/kubernetes?ref=v1.8.10";
    v1_8_10.flake = false;
    v1_8_9.url = "github:kubernetes/kubernetes?ref=v1.8.9";
    v1_8_9.flake = false;
    v1_8_8.url = "github:kubernetes/kubernetes?ref=v1.8.8";
    v1_8_8.flake = false;
    v1_8_7.url = "github:kubernetes/kubernetes?ref=v1.8.7";
    v1_8_7.flake = false;
    v1_8_6.url = "github:kubernetes/kubernetes?ref=v1.8.6";
    v1_8_6.flake = false;
    v1_8_5.url = "github:kubernetes/kubernetes?ref=v1.8.5";
    v1_8_5.flake = false;
    v1_8_4.url = "github:kubernetes/kubernetes?ref=v1.8.4";
    v1_8_4.flake = false;
    v1_8_3.url = "github:kubernetes/kubernetes?ref=v1.8.3";
    v1_8_3.flake = false;
    v1_8_2.url = "github:kubernetes/kubernetes?ref=v1.8.2";
    v1_8_2.flake = false;
    v1_8_1.url = "github:kubernetes/kubernetes?ref=v1.8.1";
    v1_8_1.flake = false;
    v1_8_0.url = "github:kubernetes/kubernetes?ref=v1.8.0";
    v1_8_0.flake = false;
    v1_7_16.url = "github:kubernetes/kubernetes?ref=v1.7.16";
    v1_7_16.flake = false;
    v1_7_15.url = "github:kubernetes/kubernetes?ref=v1.7.15";
    v1_7_15.flake = false;
    v1_7_14.url = "github:kubernetes/kubernetes?ref=v1.7.14";
    v1_7_14.flake = false;
    v1_7_13.url = "github:kubernetes/kubernetes?ref=v1.7.13";
    v1_7_13.flake = false;
    v1_7_12.url = "github:kubernetes/kubernetes?ref=v1.7.12";
    v1_7_12.flake = false;
    v1_7_11.url = "github:kubernetes/kubernetes?ref=v1.7.11";
    v1_7_11.flake = false;
    v1_7_10.url = "github:kubernetes/kubernetes?ref=v1.7.10";
    v1_7_10.flake = false;
    v1_7_9.url = "github:kubernetes/kubernetes?ref=v1.7.9";
    v1_7_9.flake = false;
    v1_7_8.url = "github:kubernetes/kubernetes?ref=v1.7.8";
    v1_7_8.flake = false;
    v1_7_7.url = "github:kubernetes/kubernetes?ref=v1.7.7";
    v1_7_7.flake = false;
    v1_7_6.url = "github:kubernetes/kubernetes?ref=v1.7.6";
    v1_7_6.flake = false;
    v1_7_5.url = "github:kubernetes/kubernetes?ref=v1.7.5";
    v1_7_5.flake = false;
    v1_7_4.url = "github:kubernetes/kubernetes?ref=v1.7.4";
    v1_7_4.flake = false;
    v1_7_3.url = "github:kubernetes/kubernetes?ref=v1.7.3";
    v1_7_3.flake = false;
    v1_7_2.url = "github:kubernetes/kubernetes?ref=v1.7.2";
    v1_7_2.flake = false;
    v1_7_1.url = "github:kubernetes/kubernetes?ref=v1.7.1";
    v1_7_1.flake = false;
    v1_7_0.url = "github:kubernetes/kubernetes?ref=v1.7.0";
    v1_7_0.flake = false;
    v1_6_13.url = "github:kubernetes/kubernetes?ref=v1.6.13";
    v1_6_13.flake = false;
    v1_6_12.url = "github:kubernetes/kubernetes?ref=v1.6.12";
    v1_6_12.flake = false;
    v1_6_11.url = "github:kubernetes/kubernetes?ref=v1.6.11";
    v1_6_11.flake = false;
    v1_6_10.url = "github:kubernetes/kubernetes?ref=v1.6.10";
    v1_6_10.flake = false;
    v1_6_9.url = "github:kubernetes/kubernetes?ref=v1.6.9";
    v1_6_9.flake = false;
    v1_6_8.url = "github:kubernetes/kubernetes?ref=v1.6.8";
    v1_6_8.flake = false;
    v1_6_7.url = "github:kubernetes/kubernetes?ref=v1.6.7";
    v1_6_7.flake = false;
    v1_6_6.url = "github:kubernetes/kubernetes?ref=v1.6.6";
    v1_6_6.flake = false;
    v1_6_5.url = "github:kubernetes/kubernetes?ref=v1.6.5";
    v1_6_5.flake = false;
    v1_6_4.url = "github:kubernetes/kubernetes?ref=v1.6.4";
    v1_6_4.flake = false;
    v1_6_3.url = "github:kubernetes/kubernetes?ref=v1.6.3";
    v1_6_3.flake = false;
    v1_6_2.url = "github:kubernetes/kubernetes?ref=v1.6.2";
    v1_6_2.flake = false;
    v1_6_1.url = "github:kubernetes/kubernetes?ref=v1.6.1";
    v1_6_1.flake = false;
    v1_6_0.url = "github:kubernetes/kubernetes?ref=v1.6.0";
    v1_6_0.flake = false;
    v1_5_8.url = "github:kubernetes/kubernetes?ref=v1.5.8";
    v1_5_8.flake = false;
    v1_5_7.url = "github:kubernetes/kubernetes?ref=v1.5.7";
    v1_5_7.flake = false;
    v1_5_6.url = "github:kubernetes/kubernetes?ref=v1.5.6";
    v1_5_6.flake = false;
    v1_5_5.url = "github:kubernetes/kubernetes?ref=v1.5.5";
    v1_5_5.flake = false;
    v1_5_4.url = "github:kubernetes/kubernetes?ref=v1.5.4";
    v1_5_4.flake = false;
    v1_5_3.url = "github:kubernetes/kubernetes?ref=v1.5.3";
    v1_5_3.flake = false;
    v1_5_2.url = "github:kubernetes/kubernetes?ref=v1.5.2";
    v1_5_2.flake = false;
    v1_5_1.url = "github:kubernetes/kubernetes?ref=v1.5.1";
    v1_5_1.flake = false;
    v1_5_0.url = "github:kubernetes/kubernetes?ref=v1.5.0";
    v1_5_0.flake = false;
    v1_4_12.url = "github:kubernetes/kubernetes?ref=v1.4.12";
    v1_4_12.flake = false;
    v1_4_9.url = "github:kubernetes/kubernetes?ref=v1.4.9";
    v1_4_9.flake = false;
    v1_4_8.url = "github:kubernetes/kubernetes?ref=v1.4.8";
    v1_4_8.flake = false;
    v1_4_7.url = "github:kubernetes/kubernetes?ref=v1.4.7";
    v1_4_7.flake = false;
    v1_4_6.url = "github:kubernetes/kubernetes?ref=v1.4.6";
    v1_4_6.flake = false;
    v1_4_5.url = "github:kubernetes/kubernetes?ref=v1.4.5";
    v1_4_5.flake = false;
    v1_4_4.url = "github:kubernetes/kubernetes?ref=v1.4.4";
    v1_4_4.flake = false;
    v1_4_3.url = "github:kubernetes/kubernetes?ref=v1.4.3";
    v1_4_3.flake = false;
    v1_4_1.url = "github:kubernetes/kubernetes?ref=v1.4.1";
    v1_4_1.flake = false;
    v1_4_0.url = "github:kubernetes/kubernetes?ref=v1.4.0";
    v1_4_0.flake = false;
    v1_3_10.url = "github:kubernetes/kubernetes?ref=v1.3.10";
    v1_3_10.flake = false;
    v1_3_9.url = "github:kubernetes/kubernetes?ref=v1.3.9";
    v1_3_9.flake = false;
    v1_3_8.url = "github:kubernetes/kubernetes?ref=v1.3.8";
    v1_3_8.flake = false;
    v1_3_7.url = "github:kubernetes/kubernetes?ref=v1.3.7";
    v1_3_7.flake = false;
    v1_3_6.url = "github:kubernetes/kubernetes?ref=v1.3.6";
    v1_3_6.flake = false;
    v1_3_5.url = "github:kubernetes/kubernetes?ref=v1.3.5";
    v1_3_5.flake = false;
    v1_3_4.url = "github:kubernetes/kubernetes?ref=v1.3.4";
    v1_3_4.flake = false;
    v1_3_3.url = "github:kubernetes/kubernetes?ref=v1.3.3";
    v1_3_3.flake = false;
    v1_3_2.url = "github:kubernetes/kubernetes?ref=v1.3.2";
    v1_3_2.flake = false;
    v1_3_1.url = "github:kubernetes/kubernetes?ref=v1.3.1";
    v1_3_1.flake = false;
    v1_3_0.url = "github:kubernetes/kubernetes?ref=v1.3.0";
    v1_3_0.flake = false;
    v1_2_7.url = "github:kubernetes/kubernetes?ref=v1.2.7";
    v1_2_7.flake = false;
    v1_2_6.url = "github:kubernetes/kubernetes?ref=v1.2.6";
    v1_2_6.flake = false;
    v1_2_5.url = "github:kubernetes/kubernetes?ref=v1.2.5";
    v1_2_5.flake = false;
    v1_2_4.url = "github:kubernetes/kubernetes?ref=v1.2.4";
    v1_2_4.flake = false;
    v1_2_3.url = "github:kubernetes/kubernetes?ref=v1.2.3";
    v1_2_3.flake = false;
    v1_2_2.url = "github:kubernetes/kubernetes?ref=v1.2.2";
    v1_2_2.flake = false;
    v1_2_1.url = "github:kubernetes/kubernetes?ref=v1.2.1";
    v1_2_1.flake = false;
    v1_2_0.url = "github:kubernetes/kubernetes?ref=v1.2.0";
    v1_2_0.flake = false;
    v1_1_8.url = "github:kubernetes/kubernetes?ref=v1.1.8";
    v1_1_8.flake = false;
    v1_1_7.url = "github:kubernetes/kubernetes?ref=v1.1.7";
    v1_1_7.flake = false;
    v1_1_4.url = "github:kubernetes/kubernetes?ref=v1.1.4";
    v1_1_4.flake = false;
    v1_1_3.url = "github:kubernetes/kubernetes?ref=v1.1.3";
    v1_1_3.flake = false;
    v1_1_2.url = "github:kubernetes/kubernetes?ref=v1.1.2";
    v1_1_2.flake = false;
    v1_1_1.url = "github:kubernetes/kubernetes?ref=v1.1.1";
    v1_1_1.flake = false;
    v1_0_7.url = "github:kubernetes/kubernetes?ref=v1.0.7";
    v1_0_7.flake = false;
    v1_0_6.url = "github:kubernetes/kubernetes?ref=v1.0.6";
    v1_0_6.flake = false;
    v1_0_4.url = "github:kubernetes/kubernetes?ref=v1.0.4";
    v1_0_4.flake = false;
    v1_0_3.url = "github:kubernetes/kubernetes?ref=v1.0.3";
    v1_0_3.flake = false;
    v1_0_1.url = "github:kubernetes/kubernetes?ref=v1.0.1";
    v1_0_1.flake = false;
  };

  outputs =
    { self
    , nixpkgs
    , flake-utils
    , v1_23_0
    , v1_22_4
    , v1_22_3
    , v1_22_2
    , v1_22_1
    , v1_22_0
    , v1_21_7
    , v1_21_6
    , v1_21_5
    , v1_21_4
    , v1_21_3
    , v1_21_2
    , v1_21_1
    , v1_21_0
    , v1_20_13
    , v1_20_12
    , v1_20_11
    , v1_20_10
    , v1_20_9
    , v1_20_8
    , v1_20_7
    , v1_20_6
    , v1_20_5
    , v1_20_4
    , v1_20_3
    , v1_20_2
    , v1_20_1
    , v1_20_0
    , v1_19_16
    , v1_19_15
    , v1_19_14
    , v1_19_13
    , v1_19_12
    , v1_19_11
    , v1_19_10
    , v1_19_9
    , v1_19_8
    , v1_19_7
    , v1_19_6
    , v1_19_5
    , v1_19_4
    , v1_19_3
    , v1_19_2
    , v1_19_1
    , v1_19_0
    , v1_18_20
    , v1_18_19
    , v1_18_18
    , v1_18_17
    , v1_18_16
    , v1_18_15
    , v1_18_14
    , v1_18_13
    , v1_18_12
    , v1_18_10
    , v1_18_9
    , v1_18_8
    , v1_18_6
    , v1_18_5
    , v1_18_4
    , v1_18_3
    , v1_18_2
    , v1_18_1
    , v1_18_0
    , v1_17_17
    , v1_17_16
    , v1_17_15
    , v1_17_14
    , v1_17_13
    , v1_17_12
    , v1_17_11
    , v1_17_9
    , v1_17_8
    , v1_17_7
    , v1_17_6
    , v1_17_5
    , v1_17_4
    , v1_17_3
    , v1_17_2
    , v1_17_1
    , v1_17_0
    , v1_16_15
    , v1_16_14
    , v1_16_13
    , v1_16_12
    , v1_16_11
    , v1_16_10
    , v1_16_9
    , v1_16_8
    , v1_16_7
    , v1_16_6
    , v1_16_5
    , v1_16_4
    , v1_16_3
    , v1_16_2
    , v1_16_1
    , v1_16_0
    , v1_15_12
    , v1_15_11
    , v1_15_10
    , v1_15_9
    , v1_15_8
    , v1_15_7
    , v1_15_6
    , v1_15_5
    , v1_15_4
    , v1_15_3
    , v1_15_2
    , v1_15_1
    , v1_15_0
    , v1_14_10
    , v1_14_9
    , v1_14_8
    , v1_14_7
    , v1_14_6
    , v1_14_5
    , v1_14_4
    , v1_14_3
    , v1_14_2
    , v1_14_1
    , v1_14_0
    , v1_13_12
    , v1_13_11
    , v1_13_10
    , v1_13_9
    , v1_13_8
    , v1_13_7
    , v1_13_6
    , v1_13_5
    , v1_13_4
    , v1_13_3
    , v1_13_2
    , v1_13_1
    , v1_13_0
    , v1_12_10
    , v1_12_9
    , v1_12_8
    , v1_12_7
    , v1_12_6
    , v1_12_5
    , v1_12_4
    , v1_12_3
    , v1_12_2
    , v1_12_1
    , v1_12_0
    , v1_11_10
    , v1_11_9
    , v1_11_8
    , v1_11_7
    , v1_11_6
    , v1_11_5
    , v1_11_4
    , v1_11_3
    , v1_11_2
    , v1_11_1
    , v1_11_0
    , v1_10_13
    , v1_10_12
    , v1_10_11
    , v1_10_10
    , v1_10_9
    , v1_10_8
    , v1_10_7
    , v1_10_6
    , v1_10_5
    , v1_10_4
    , v1_10_3
    , v1_10_2
    , v1_10_1
    , v1_10_0
    , v1_9_11
    , v1_9_10
    , v1_9_9
    , v1_9_8
    , v1_9_7
    , v1_9_6
    , v1_9_5
    , v1_9_4
    , v1_9_3
    , v1_9_2
    , v1_9_1
    , v1_9_0
    , v1_8_15
    , v1_8_14
    , v1_8_13
    , v1_8_12
    , v1_8_11
    , v1_8_10
    , v1_8_9
    , v1_8_8
    , v1_8_7
    , v1_8_6
    , v1_8_5
    , v1_8_4
    , v1_8_3
    , v1_8_2
    , v1_8_1
    , v1_8_0
    , v1_7_16
    , v1_7_15
    , v1_7_14
    , v1_7_13
    , v1_7_12
    , v1_7_11
    , v1_7_10
    , v1_7_9
    , v1_7_8
    , v1_7_7
    , v1_7_6
    , v1_7_5
    , v1_7_4
    , v1_7_3
    , v1_7_2
    , v1_7_1
    , v1_7_0
    , v1_6_13
    , v1_6_12
    , v1_6_11
    , v1_6_10
    , v1_6_9
    , v1_6_8
    , v1_6_7
    , v1_6_6
    , v1_6_5
    , v1_6_4
    , v1_6_3
    , v1_6_2
    , v1_6_1
    , v1_6_0
    , v1_5_8
    , v1_5_7
    , v1_5_6
    , v1_5_5
    , v1_5_4
    , v1_5_3
    , v1_5_2
    , v1_5_1
    , v1_5_0
    , v1_4_12
    , v1_4_9
    , v1_4_8
    , v1_4_7
    , v1_4_6
    , v1_4_5
    , v1_4_4
    , v1_4_3
    , v1_4_1
    , v1_4_0
    , v1_3_10
    , v1_3_9
    , v1_3_8
    , v1_3_7
    , v1_3_6
    , v1_3_5
    , v1_3_4
    , v1_3_3
    , v1_3_2
    , v1_3_1
    , v1_3_0
    , v1_2_7
    , v1_2_6
    , v1_2_5
    , v1_2_4
    , v1_2_3
    , v1_2_2
    , v1_2_1
    , v1_2_0
    , v1_1_8
    , v1_1_7
    , v1_1_4
    , v1_1_3
    , v1_1_2
    , v1_1_1
    , v1_0_7
    , v1_0_6
    , v1_0_4
    , v1_0_3
    , v1_0_1
    ,
    }:

    flake-utils.lib.eachDefaultSystem (system:
    let

      pairs = [
        { src = v1_23_0; name = "v1_23_0"; }
        { src = v1_22_4; name = "v1_22_4"; }
        { src = v1_22_3; name = "v1_22_3"; }
        { src = v1_22_2; name = "v1_22_2"; }
        { src = v1_22_1; name = "v1_22_1"; }
        { src = v1_22_0; name = "v1_22_0"; }
        { src = v1_21_7; name = "v1_21_7"; }
        { src = v1_21_6; name = "v1_21_6"; }
        { src = v1_21_5; name = "v1_21_5"; }
        { src = v1_21_4; name = "v1_21_4"; }
        { src = v1_21_3; name = "v1_21_3"; }
        { src = v1_21_2; name = "v1_21_2"; }
        { src = v1_21_1; name = "v1_21_1"; }
        { src = v1_21_0; name = "v1_21_0"; }
        { src = v1_20_13; name = "v1_20_13"; }
        { src = v1_20_12; name = "v1_20_12"; }
        { src = v1_20_11; name = "v1_20_11"; }
        { src = v1_20_10; name = "v1_20_10"; }
        { src = v1_20_9; name = "v1_20_9"; }
        { src = v1_20_8; name = "v1_20_8"; }
        { src = v1_20_7; name = "v1_20_7"; }
        { src = v1_20_6; name = "v1_20_6"; }
        { src = v1_20_5; name = "v1_20_5"; }
        { src = v1_20_4; name = "v1_20_4"; }
        { src = v1_20_3; name = "v1_20_3"; }
        { src = v1_20_2; name = "v1_20_2"; }
        { src = v1_20_1; name = "v1_20_1"; }
        { src = v1_20_0; name = "v1_20_0"; }
        { src = v1_19_16; name = "v1_19_16"; }
        { src = v1_19_15; name = "v1_19_15"; }
        { src = v1_19_14; name = "v1_19_14"; }
        { src = v1_19_13; name = "v1_19_13"; }
        { src = v1_19_12; name = "v1_19_12"; }
        { src = v1_19_11; name = "v1_19_11"; }
        { src = v1_19_10; name = "v1_19_10"; }
        { src = v1_19_9; name = "v1_19_9"; }
        { src = v1_19_8; name = "v1_19_8"; }
        { src = v1_19_7; name = "v1_19_7"; }
        { src = v1_19_6; name = "v1_19_6"; }
        { src = v1_19_5; name = "v1_19_5"; }
        { src = v1_19_4; name = "v1_19_4"; }
        { src = v1_19_3; name = "v1_19_3"; }
        { src = v1_19_2; name = "v1_19_2"; }
        { src = v1_19_1; name = "v1_19_1"; }
        { src = v1_19_0; name = "v1_19_0"; }
        { src = v1_18_20; name = "v1_18_20"; }
        { src = v1_18_19; name = "v1_18_19"; }
        { src = v1_18_18; name = "v1_18_18"; }
        { src = v1_18_17; name = "v1_18_17"; }
        { src = v1_18_16; name = "v1_18_16"; }
        { src = v1_18_15; name = "v1_18_15"; }
        { src = v1_18_14; name = "v1_18_14"; }
        { src = v1_18_13; name = "v1_18_13"; }
        { src = v1_18_12; name = "v1_18_12"; }
        { src = v1_18_10; name = "v1_18_10"; }
        { src = v1_18_9; name = "v1_18_9"; }
        { src = v1_18_8; name = "v1_18_8"; }
        { src = v1_18_6; name = "v1_18_6"; }
        { src = v1_18_5; name = "v1_18_5"; }
        { src = v1_18_4; name = "v1_18_4"; }
        { src = v1_18_3; name = "v1_18_3"; }
        { src = v1_18_2; name = "v1_18_2"; }
        { src = v1_18_1; name = "v1_18_1"; }
        { src = v1_18_0; name = "v1_18_0"; }
        { src = v1_17_17; name = "v1_17_17"; }
        { src = v1_17_16; name = "v1_17_16"; }
        { src = v1_17_15; name = "v1_17_15"; }
        { src = v1_17_14; name = "v1_17_14"; }
        { src = v1_17_13; name = "v1_17_13"; }
        { src = v1_17_12; name = "v1_17_12"; }
        { src = v1_17_11; name = "v1_17_11"; }
        { src = v1_17_9; name = "v1_17_9"; }
        { src = v1_17_8; name = "v1_17_8"; }
        { src = v1_17_7; name = "v1_17_7"; }
        { src = v1_17_6; name = "v1_17_6"; }
        { src = v1_17_5; name = "v1_17_5"; }
        { src = v1_17_4; name = "v1_17_4"; }
        { src = v1_17_3; name = "v1_17_3"; }
        { src = v1_17_2; name = "v1_17_2"; }
        { src = v1_17_1; name = "v1_17_1"; }
        { src = v1_17_0; name = "v1_17_0"; }
        { src = v1_16_15; name = "v1_16_15"; }
        { src = v1_16_14; name = "v1_16_14"; }
        { src = v1_16_13; name = "v1_16_13"; }
        { src = v1_16_12; name = "v1_16_12"; }
        { src = v1_16_11; name = "v1_16_11"; }
        { src = v1_16_10; name = "v1_16_10"; }
        { src = v1_16_9; name = "v1_16_9"; }
        { src = v1_16_8; name = "v1_16_8"; }
        { src = v1_16_7; name = "v1_16_7"; }
        { src = v1_16_6; name = "v1_16_6"; }
        { src = v1_16_5; name = "v1_16_5"; }
        { src = v1_16_4; name = "v1_16_4"; }
        { src = v1_16_3; name = "v1_16_3"; }
        { src = v1_16_2; name = "v1_16_2"; }
        { src = v1_16_1; name = "v1_16_1"; }
        { src = v1_16_0; name = "v1_16_0"; }
        { src = v1_15_12; name = "v1_15_12"; }
        { src = v1_15_11; name = "v1_15_11"; }
        { src = v1_15_10; name = "v1_15_10"; }
        { src = v1_15_9; name = "v1_15_9"; }
        { src = v1_15_8; name = "v1_15_8"; }
        { src = v1_15_7; name = "v1_15_7"; }
        { src = v1_15_6; name = "v1_15_6"; }
        { src = v1_15_5; name = "v1_15_5"; }
        { src = v1_15_4; name = "v1_15_4"; }
        { src = v1_15_3; name = "v1_15_3"; }
        { src = v1_15_2; name = "v1_15_2"; }
        { src = v1_15_1; name = "v1_15_1"; }
        { src = v1_15_0; name = "v1_15_0"; }
        { src = v1_14_10; name = "v1_14_10"; }
        { src = v1_14_9; name = "v1_14_9"; }
        { src = v1_14_8; name = "v1_14_8"; }
        { src = v1_14_7; name = "v1_14_7"; }
        { src = v1_14_6; name = "v1_14_6"; }
        { src = v1_14_5; name = "v1_14_5"; }
        { src = v1_14_4; name = "v1_14_4"; }
        { src = v1_14_3; name = "v1_14_3"; }
        { src = v1_14_2; name = "v1_14_2"; }
        { src = v1_14_1; name = "v1_14_1"; }
        { src = v1_14_0; name = "v1_14_0"; }
        { src = v1_13_12; name = "v1_13_12"; }
        { src = v1_13_11; name = "v1_13_11"; }
        { src = v1_13_10; name = "v1_13_10"; }
        { src = v1_13_9; name = "v1_13_9"; }
        { src = v1_13_8; name = "v1_13_8"; }
        { src = v1_13_7; name = "v1_13_7"; }
        { src = v1_13_6; name = "v1_13_6"; }
        { src = v1_13_5; name = "v1_13_5"; }
        { src = v1_13_4; name = "v1_13_4"; }
        { src = v1_13_3; name = "v1_13_3"; }
        { src = v1_13_2; name = "v1_13_2"; }
        { src = v1_13_1; name = "v1_13_1"; }
        { src = v1_13_0; name = "v1_13_0"; }
        { src = v1_12_10; name = "v1_12_10"; }
        { src = v1_12_9; name = "v1_12_9"; }
        { src = v1_12_8; name = "v1_12_8"; }
        { src = v1_12_7; name = "v1_12_7"; }
        { src = v1_12_6; name = "v1_12_6"; }
        { src = v1_12_5; name = "v1_12_5"; }
        { src = v1_12_4; name = "v1_12_4"; }
        { src = v1_12_3; name = "v1_12_3"; }
        { src = v1_12_2; name = "v1_12_2"; }
        { src = v1_12_1; name = "v1_12_1"; }
        { src = v1_12_0; name = "v1_12_0"; }
        { src = v1_11_10; name = "v1_11_10"; }
        { src = v1_11_9; name = "v1_11_9"; }
        { src = v1_11_8; name = "v1_11_8"; }
        { src = v1_11_7; name = "v1_11_7"; }
        { src = v1_11_6; name = "v1_11_6"; }
        { src = v1_11_5; name = "v1_11_5"; }
        { src = v1_11_4; name = "v1_11_4"; }
        { src = v1_11_3; name = "v1_11_3"; }
        { src = v1_11_2; name = "v1_11_2"; }
        { src = v1_11_1; name = "v1_11_1"; }
        { src = v1_11_0; name = "v1_11_0"; }
        { src = v1_10_13; name = "v1_10_13"; }
        { src = v1_10_12; name = "v1_10_12"; }
        { src = v1_10_11; name = "v1_10_11"; }
        { src = v1_10_10; name = "v1_10_10"; }
        { src = v1_10_9; name = "v1_10_9"; }
        { src = v1_10_8; name = "v1_10_8"; }
        { src = v1_10_7; name = "v1_10_7"; }
        { src = v1_10_6; name = "v1_10_6"; }
        { src = v1_10_5; name = "v1_10_5"; }
        { src = v1_10_4; name = "v1_10_4"; }
        { src = v1_10_3; name = "v1_10_3"; }
        { src = v1_10_2; name = "v1_10_2"; }
        { src = v1_10_1; name = "v1_10_1"; }
        { src = v1_10_0; name = "v1_10_0"; }
        { src = v1_9_11; name = "v1_9_11"; }
        { src = v1_9_10; name = "v1_9_10"; }
        { src = v1_9_9; name = "v1_9_9"; }
        { src = v1_9_8; name = "v1_9_8"; }
        { src = v1_9_7; name = "v1_9_7"; }
        { src = v1_9_6; name = "v1_9_6"; }
        { src = v1_9_5; name = "v1_9_5"; }
        { src = v1_9_4; name = "v1_9_4"; }
        { src = v1_9_3; name = "v1_9_3"; }
        { src = v1_9_2; name = "v1_9_2"; }
        { src = v1_9_1; name = "v1_9_1"; }
        { src = v1_9_0; name = "v1_9_0"; }
        { src = v1_8_15; name = "v1_8_15"; }
        { src = v1_8_14; name = "v1_8_14"; }
        { src = v1_8_13; name = "v1_8_13"; }
        { src = v1_8_12; name = "v1_8_12"; }
        { src = v1_8_11; name = "v1_8_11"; }
        { src = v1_8_10; name = "v1_8_10"; }
        { src = v1_8_9; name = "v1_8_9"; }
        { src = v1_8_8; name = "v1_8_8"; }
        { src = v1_8_7; name = "v1_8_7"; }
        { src = v1_8_6; name = "v1_8_6"; }
        { src = v1_8_5; name = "v1_8_5"; }
        { src = v1_8_4; name = "v1_8_4"; }
        { src = v1_8_3; name = "v1_8_3"; }
        { src = v1_8_2; name = "v1_8_2"; }
        { src = v1_8_1; name = "v1_8_1"; }
        { src = v1_8_0; name = "v1_8_0"; }
        { src = v1_7_16; name = "v1_7_16"; }
        { src = v1_7_15; name = "v1_7_15"; }
        { src = v1_7_14; name = "v1_7_14"; }
        { src = v1_7_13; name = "v1_7_13"; }
        { src = v1_7_12; name = "v1_7_12"; }
        { src = v1_7_11; name = "v1_7_11"; }
        { src = v1_7_10; name = "v1_7_10"; }
        { src = v1_7_9; name = "v1_7_9"; }
        { src = v1_7_8; name = "v1_7_8"; }
        { src = v1_7_7; name = "v1_7_7"; }
        { src = v1_7_6; name = "v1_7_6"; }
        { src = v1_7_5; name = "v1_7_5"; }
        { src = v1_7_4; name = "v1_7_4"; }
        { src = v1_7_3; name = "v1_7_3"; }
        { src = v1_7_2; name = "v1_7_2"; }
        { src = v1_7_1; name = "v1_7_1"; }
        { src = v1_7_0; name = "v1_7_0"; }
        { src = v1_6_13; name = "v1_6_13"; }
        { src = v1_6_12; name = "v1_6_12"; }
        { src = v1_6_11; name = "v1_6_11"; }
        { src = v1_6_10; name = "v1_6_10"; }
        { src = v1_6_9; name = "v1_6_9"; }
        { src = v1_6_8; name = "v1_6_8"; }
        { src = v1_6_7; name = "v1_6_7"; }
        { src = v1_6_6; name = "v1_6_6"; }
        { src = v1_6_5; name = "v1_6_5"; }
        { src = v1_6_4; name = "v1_6_4"; }
        { src = v1_6_3; name = "v1_6_3"; }
        { src = v1_6_2; name = "v1_6_2"; }
        { src = v1_6_1; name = "v1_6_1"; }
        { src = v1_6_0; name = "v1_6_0"; }
        { src = v1_5_8; name = "v1_5_8"; }
        { src = v1_5_7; name = "v1_5_7"; }
        { src = v1_5_6; name = "v1_5_6"; }
        { src = v1_5_5; name = "v1_5_5"; }
        { src = v1_5_4; name = "v1_5_4"; }
        { src = v1_5_3; name = "v1_5_3"; }
        { src = v1_5_2; name = "v1_5_2"; }
        { src = v1_5_1; name = "v1_5_1"; }
        { src = v1_5_0; name = "v1_5_0"; }
        { src = v1_4_12; name = "v1_4_12"; }
        { src = v1_4_9; name = "v1_4_9"; }
        { src = v1_4_8; name = "v1_4_8"; }
        { src = v1_4_7; name = "v1_4_7"; }
        { src = v1_4_6; name = "v1_4_6"; }
        { src = v1_4_5; name = "v1_4_5"; }
        { src = v1_4_4; name = "v1_4_4"; }
        { src = v1_4_3; name = "v1_4_3"; }
        { src = v1_4_1; name = "v1_4_1"; }
        { src = v1_4_0; name = "v1_4_0"; }
        { src = v1_3_10; name = "v1_3_10"; }
        { src = v1_3_9; name = "v1_3_9"; }
        { src = v1_3_8; name = "v1_3_8"; }
        { src = v1_3_7; name = "v1_3_7"; }
        { src = v1_3_6; name = "v1_3_6"; }
        { src = v1_3_5; name = "v1_3_5"; }
        { src = v1_3_4; name = "v1_3_4"; }
        { src = v1_3_3; name = "v1_3_3"; }
        { src = v1_3_2; name = "v1_3_2"; }
        { src = v1_3_1; name = "v1_3_1"; }
        { src = v1_3_0; name = "v1_3_0"; }
        { src = v1_2_7; name = "v1_2_7"; }
        { src = v1_2_6; name = "v1_2_6"; }
        { src = v1_2_5; name = "v1_2_5"; }
        { src = v1_2_4; name = "v1_2_4"; }
        { src = v1_2_3; name = "v1_2_3"; }
        { src = v1_2_2; name = "v1_2_2"; }
        { src = v1_2_1; name = "v1_2_1"; }
        { src = v1_2_0; name = "v1_2_0"; }
        { src = v1_1_8; name = "v1_1_8"; }
        { src = v1_1_7; name = "v1_1_7"; }
        { src = v1_1_4; name = "v1_1_4"; }
        { src = v1_1_3; name = "v1_1_3"; }
        { src = v1_1_2; name = "v1_1_2"; }
        { src = v1_1_1; name = "v1_1_1"; }
        { src = v1_0_7; name = "v1_0_7"; }
        { src = v1_0_6; name = "v1_0_6"; }
        { src = v1_0_4; name = "v1_0_4"; }
        { src = v1_0_3; name = "v1_0_3"; }
        { src = v1_0_1; name = "v1_0_1"; }
      ];

      pkgs = import nixpkgs {
        inherit system;
        overlays = map
          ({ src, name }:
            (self: super: {
              "${name}" = super.kubernetes.overrideAttrs
                (old: {
                  version = "${name}";
                  patches = [ ];
                  src = src;
                  WHAT = "cmd/kubectl";
                });
            })
          )
          pairs;
      };

      kubepackages = builtins.foldl' (acc: { name, ... }: (acc // { "${name}" = pkgs."${name}"; })) { } pairs;
    in
    rec {
      packages = flake-utils.lib.flattenTree kubepackages;
      devShell = pkgs.mkShell {
        buildInputs = with pkgs; [
          coreutils
          fish
          lua5_4
        ];
      };
    });
}
