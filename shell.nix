{ pkgs ? import <nixpkgs> {} }:
let
  myAppEnv = pkgs.poetry2nix.mkPoetryEnv {
    projectDir = ./.;
#    python = pkgs.python310;
  };
in myAppEnv.env.overrideAttrs (oldAttrs: {
#  buildInputs = [ pkgs.postgresql ];
})
#pkgs.mkShell {
#  buildInputs = [ pkgs.python310 pkgs.poetry ];
#}