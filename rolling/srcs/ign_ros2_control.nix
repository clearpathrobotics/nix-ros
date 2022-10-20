{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-controls";
    repo = "gz_ros2_control";
    rev = "e2a475104b67134cebb697ed533fc3523dfe3924";
    hash = "sha256-vGrwb6ubu2wD+mclIPdb9GuGIqSx1tqAMD8HPV/UkMI=";
    name = "ros-controls-gz_ros2_control-e2a475104b67134cebb697ed533fc3523dfe3924";
  });
in
{
  ign_ros2_control = pkg "sha256-VvvV+x3GeXEsed6Z2IvdjxiWc1S85ucsmlBo2CzV4hs=" "ign_ros2_control";
  ign_ros2_control_demos = pkg "sha256-gJl+6W9PHTRCg19vU8Mc28jEY/BCAsUhpvYn2Wbn984=" "ign_ros2_control_demos";
}
