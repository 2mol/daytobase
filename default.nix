# { nixpkgs ? import <nixpkgs> {} }:
{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/cebdc8d51604033e0408a08f57afdd31fff4f33a.tar.gz") {}}:

with pkgs; mkShell {
  buildInputs = [
    # direnv
    toilet
    python38
    python38Packages.pip
    terraform
    awscli2
    jq
  ];

  shellHook = ''
    toilet Daytobase -f future --gay
    alias tf=terraform
    # eval "$(direnv hook bash)"
  '';
}
