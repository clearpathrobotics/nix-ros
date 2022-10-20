{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "aprilrobotics";
    repo = "apriltag";
    rev = "e5e234125b77b2a4ea9441d10689acce123acf3d";
    hash = "sha256-v08pzQv9W9PjMHpJiDcgwNUL8aLoF8ojRIKFmevh7MM=";
    name = "aprilrobotics-apriltag-e5e234125b77b2a4ea9441d10689acce123acf3d";
  });
in
{
  apriltag = pkg "sha256-v08pzQv9W9PjMHpJiDcgwNUL8aLoF8ojRIKFmevh7MM=" ".";
}
