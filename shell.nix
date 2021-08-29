{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    (python38.withPackages (ps: with ps; [
        setuptools
        pip
        virtualenv
      ]))
  ];
}
