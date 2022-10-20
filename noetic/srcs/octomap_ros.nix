{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "OctoMap";
    repo = "octomap_ros";
    rev = "fb462a9e542dad60b6287b5e610c24b998bb65aa";
    hash = "sha256-XOZSVtkOQyaHoJPDuyokug7Svid+xJHa9g7iyW12PQ4=";
    name = "OctoMap-octomap_ros-fb462a9e542dad60b6287b5e610c24b998bb65aa";
  });
in
{
  octomap_ros = pkg "sha256-XOZSVtkOQyaHoJPDuyokug7Svid+xJHa9g7iyW12PQ4=" ".";
}
