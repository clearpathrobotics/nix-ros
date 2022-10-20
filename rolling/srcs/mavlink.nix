{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "mavlink";
    repo = "mavlink-gbp-release";
    rev = "71c474023c18ca442bce83c1cc3de0cd5ab539bf";
    hash = "sha256-fPg1/0GSc4Dmm65WMg2Z6WXAA6uXT6JXBehnBwzVUmA=";
    name = "mavlink-mavlink-gbp-release-71c474023c18ca442bce83c1cc3de0cd5ab539bf";
  });
in
{
  mavlink = pkg "sha256-fPg1/0GSc4Dmm65WMg2Z6WXAA6uXT6JXBehnBwzVUmA=" ".";
}
