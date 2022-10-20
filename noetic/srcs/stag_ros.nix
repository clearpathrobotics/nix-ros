{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "usrl-uofsc";
    repo = "stag_ros";
    rev = "03daac1616992be5ee8ae262b841dd290e24d6df";
    hash = "sha256-mwCP5U64evOU4Mg8HltlUH+fk9ClK7/MoYkoVP8y9Ns=";
    name = "usrl-uofsc-stag_ros-03daac1616992be5ee8ae262b841dd290e24d6df";
  });
in
{
  stag_ros = pkg "sha256-mwCP5U64evOU4Mg8HltlUH+fk9ClK7/MoYkoVP8y9Ns=" ".";
}
