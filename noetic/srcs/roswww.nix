{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "tork-a";
    repo = "roswww";
    rev = "c4b4d43ee703089e6f4f68102e077d3259b22d79";
    hash = "sha256-SMRTbmtUcpTgE2SeHFUjEOKaiarig114c8Vb2sa+71E=";
    name = "tork-a-roswww-c4b4d43ee703089e6f4f68102e077d3259b22d79";
  });
in
{
  roswww = pkg "sha256-SMRTbmtUcpTgE2SeHFUjEOKaiarig114c8Vb2sa+71E=" ".";
}
