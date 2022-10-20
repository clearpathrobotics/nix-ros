{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "ros_workspace";
    rev = "43dd075ab5859290d4d09b46cf946586dc389a18";
    hash = "sha256-FXiyjTZx5N94wlqTFY6bxysv+eiH6noKxFlYXOwcV2M=";
    name = "ros2-ros_workspace-43dd075ab5859290d4d09b46cf946586dc389a18";
  });
in
{
  ros_workspace = pkg "sha256-FXiyjTZx5N94wlqTFY6bxysv+eiH6noKxFlYXOwcV2M=" ".";
}
