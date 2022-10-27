{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "kobuki-base";
    repo = "kobuki_core";
    rev = "e2f0feac0f7a9964d021ac3241b7663f7728d5b9";
    hash = "sha256-mYngQOSLZhz286nD1Xh9OFJkE503Z30EwPjSaxwQpOw=";
    name = "kobuki-base-kobuki_core-e2f0feac0f7a9964d021ac3241b7663f7728d5b9";
  });
in
{
  kobuki_core = pkg "sha256-mYngQOSLZhz286nD1Xh9OFJkE503Z30EwPjSaxwQpOw=" ".";
}
