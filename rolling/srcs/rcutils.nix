{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rcutils";
    rev = "98d624a455e52c8bdd150c380ca302cf6a8a750c";
    hash = "sha256-tC2LmEYbNhUQTVugbd2Br542Qi9m9kBXXR0tkS1azv0=";
    name = "ros2-rcutils-98d624a455e52c8bdd150c380ca302cf6a8a750c";
  });
in
{
  rcutils = pkg "sha256-tC2LmEYbNhUQTVugbd2Br542Qi9m9kBXXR0tkS1azv0=" ".";
}
