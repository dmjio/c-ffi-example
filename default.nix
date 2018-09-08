{ pkgs ? import <nixpkgs> {} }:
  pkgs.haskellPackages.callPackage ./c-ffi-example.nix {}
