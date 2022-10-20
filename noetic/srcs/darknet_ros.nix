{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "leggedrobotics";
    repo = "darknet_ros";
    rev = "1027a2806712918eea967da02f12c3d8c95af9db";
    hash = "sha256-XtgEeG0NtibGo9tCacO0GNAHgSMK+NwHBAOIadXRS+A=";
    name = "leggedrobotics-darknet_ros-1027a2806712918eea967da02f12c3d8c95af9db";
  });
in
{
  darknet_ros = pkg "sha256-deOZX2e36Aq/sA0/kuvL6kLN34/k17tHmtsQPXU/3RM=" "darknet_ros";
  darknet_ros_msgs = pkg "sha256-oPBJl0rzVAhQ6G51afRs+6RAcsn2ibDuVXkMZqZgNGM=" "darknet_ros_msgs";
}
