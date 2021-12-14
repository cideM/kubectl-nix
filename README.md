# Install Past `kubectl` Versions

Ever wanted to install a specific `kubectl` version for your cluster, but Nixpkgs only has the most recent one? Me too! This repository provides some past versions of `kubectl` so you don't have to hunt down Git commits and tarballs.

## Usage

Here's how to list the outputs and then build one:

```console
$ nix flake show github:cidem/kubectl-nix
git+file:///Users/fbs/private/kubectl-nix
├───devShell
│   ├───aarch64-darwin: development environment 'nix-shell'
│   ├───aarch64-linux: development environment 'nix-shell'
│   ├───i686-linux: development environment 'nix-shell'
│   ├───x86_64-darwin: development environment 'nix-shell'
│   └───x86_64-linux: development environment 'nix-shell'
└───packages
    ├───aarch64-darwin
    │   ├───"1_14_0": package 'kubectl-1.14.0'
    │   ├───"1_15_3": package 'kubectl-1.15.3'
    │   ├───"1_15_4": package 'kubectl-1.15.4'
    │   ├───"1_18_6": package 'kubectl-1.18.6'
    │   ├───"1_18_8": package 'kubectl-1.18.8'
    │   ├───"1_19_1": package 'kubectl-1.19.1'
    ...
$ nix build github:cidem/kubectl-nix#1_18_8
```

Here's how you can use this in a flake, as an overlay:

```nix
(self: super: {
  kubectl = kubectl-nix.packages."x86_64-darwin"."1_19_3";
})
```

Up until and including 1.20.4 `aarch64` packages use `x86_64-darwin`.

## Architecture (and what didn't work)

My initial plan was to get all Kubernetes releases from GitHub and then just override the `src` of the Kubernetes derivation. This obviously doesn't work since you can't just apply a recent Nixpkgs checkout to a really old Kubernetes repository.

Then I switched to finding the Nixpkgs commits that correspond to certain Kubectl versions and making that available.

This then got me thinking, can't I just take older Nixpkgs checkout and then override `src` for those? And indeed, this kind of works.

But this still doesn't magically get rid of all problems, since dynamic linking on MacOS went through some changes in 2021 and therefore old Nixpkgs checkouts don't always work. I also ran into rather cryptic errors where Nix complained about an unexpected `crossOverlay` argument. Maybe something to do with using `flake-utils`, or my local Nix version?

Anyway, don't let perfect be the enemy of the good. So here are some, but not all, past versions of Kubectl.

And yes, you can also just go to their website and download the static binary and you could expose that as a flake. But I wanted to at least try building from source.
