{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "pointgrey_camera_driver";
    rev = "cc8801489476d46951a0156f3b58de14bf124c92";
    hash = "sha256-xdqN66DXWOZfQRzfufYLPbMtvBtcOAOYT2wGB3eCqeY=";
    name = "ros-drivers-pointgrey_camera_driver-cc8801489476d46951a0156f3b58de14bf124c92";
  });
in
{
  image_exposure_msgs = pkg "sha256-YM2jVBQRPchrVglgw7PmKH/a31fLvIsXUqxzJRkV8ms=" "image_exposure_msgs";
  pointgrey_camera_description = pkg "sha256-pHUCoh8FnKy6cLiukPUF17+o6RWjQ4d3x1LMIFUKKY4=" "pointgrey_camera_description";
  pointgrey_camera_driver = pkg "sha256-mB/itXCzfxYJJgfY5eJQVIJSYsTOnXsR4/KGYlkDstI=" "pointgrey_camera_driver";
  statistics_msgs = pkg "sha256-zjMJt5IV0oV0qnLgTquTxDLliPyCptjrtFly7QdjJpQ=" "statistics_msgs";
  wfov_camera_msgs = pkg "sha256-UwuNLOhY0MTvY/UM44Uvj8NsJpJ0ZeABsvOgdlvLPKg=" "wfov_camera_msgs";
}
