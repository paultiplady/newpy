{ pkgs ? import <nixpkgs> {} }:
let
  myAppEnv = pkgs.poetry2nix.mkPoetryEnv {
    projectDir = ./.;
    python = pkgs.python311;
  };
in myAppEnv.env.overrideAttrs (oldAttrs: {
  buildInputs = [ pkgs.postgresql ];
})
