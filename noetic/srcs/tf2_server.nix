{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "peci1";
    repo = "tf2_server";
    rev = "e71188ecfd2976a6cad9ce5ca6dd1d49fca20912";
    hash = "sha256-Bk1jD2C+gN84sGwA8PxNNfJ1COrPn1nqfYtl8DAVzxc=";
    name = "peci1-tf2_server-e71188ecfd2976a6cad9ce5ca6dd1d49fca20912";
  });
in
{
  tf2_server = pkg "sha256-Bk1jD2C+gN84sGwA8PxNNfJ1COrPn1nqfYtl8DAVzxc=" ".";
}
