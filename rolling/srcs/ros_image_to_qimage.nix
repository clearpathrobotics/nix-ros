{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-sports";
    repo = "ros_image_to_qimage";
    rev = "68672be7c984da40ec2bb5bdf6dd1a2ed16ee363";
    hash = "sha256-qxt94vxyKVhWR64DyvjU5D5xKcJcflZdDd/jA2e0d9U=";
    name = "ros-sports-ros_image_to_qimage-68672be7c984da40ec2bb5bdf6dd1a2ed16ee363";
  });
in
{
  ros_image_to_qimage = pkg "sha256-qxt94vxyKVhWR64DyvjU5D5xKcJcflZdDd/jA2e0d9U=" ".";
}
