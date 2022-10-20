{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "openni2_camera";
    rev = "dd6f453ed11e3a68404cfa889530d0d149474645";
    hash = "sha256-oKcZsDEfo7sm5plWVkk8yZcdGSa3SAQP7Euv8yzHnzU=";
    name = "ros-drivers-openni2_camera-dd6f453ed11e3a68404cfa889530d0d149474645";
  });
in
{
  openni2_camera = pkg "sha256-yFGreuBKZHu0EXVGogjo5RMENPQfjqGsx98r3gy/n2Y=" "openni2_camera";
  openni2_launch = pkg "sha256-0gRqRIEKsWnQYDaZwSeylZSgW+znkMgGV7q/PL6jsaI=" "openni2_launch";
}
