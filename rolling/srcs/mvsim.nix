{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "MRPT";
    repo = "mvsim";
    rev = "1f235f67f7ed0c45d6be7c2ca25c7bb26ba2c85d";
    hash = "sha256-lSk9JkmLoncffHlf81bmXKijsRKDc7z0xs9Nf8loihs=";
    name = "MRPT-mvsim-1f235f67f7ed0c45d6be7c2ca25c7bb26ba2c85d";
  });
in
{
  mvsim = pkg "sha256-lSk9JkmLoncffHlf81bmXKijsRKDc7z0xs9Nf8loihs=" ".";
}
