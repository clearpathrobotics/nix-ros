{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ual-arm-ros-pkg";
    repo = "mvsim";
    rev = "1f235f67f7ed0c45d6be7c2ca25c7bb26ba2c85d";
    hash = "sha256-lSk9JkmLoncffHlf81bmXKijsRKDc7z0xs9Nf8loihs=";
    name = "ual-arm-ros-pkg-mvsim-1f235f67f7ed0c45d6be7c2ca25c7bb26ba2c85d";
  });
in
{
  mvsim = pkg "sha256-lSk9JkmLoncffHlf81bmXKijsRKDc7z0xs9Nf8loihs=" ".";
}
