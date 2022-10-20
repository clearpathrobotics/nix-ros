{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "gencpp";
    rev = "3fd02536834a0717fed60f980adfad784d270170";
    hash = "sha256-WOikg35ukupW3XA9X2PdSSwAsuNprwS8bgqxQW37l0c=";
    name = "ros-gencpp-3fd02536834a0717fed60f980adfad784d270170";
  });
in
{
  gencpp = pkg "sha256-WOikg35ukupW3XA9X2PdSSwAsuNprwS8bgqxQW37l0c=" ".";
}
