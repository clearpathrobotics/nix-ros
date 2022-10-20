{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros4hri";
    repo = "hri_rviz";
    rev = "a4cf7ca1daf575975445e2d930f1b0b5345b6b4c";
    hash = "sha256-GZAlAdCn5mlIKyaGVFqoed8STzxxbBXg+5buHC6tnKY=";
    name = "ros4hri-hri_rviz-a4cf7ca1daf575975445e2d930f1b0b5345b6b4c";
  });
in
{
  hri_rviz = pkg "sha256-GZAlAdCn5mlIKyaGVFqoed8STzxxbBXg+5buHC6tnKY=" ".";
}
