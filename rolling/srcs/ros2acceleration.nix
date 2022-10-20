{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-acceleration";
    repo = "ros2acceleration";
    rev = "d8c146562b21174c871702dc6ce9eb89791e2f4c";
    hash = "sha256-e9shLvSDPNgJySmQ+3rjQ9Uvtpn9dRq+eiK9JGp7MVg=";
    name = "ros-acceleration-ros2acceleration-d8c146562b21174c871702dc6ce9eb89791e2f4c";
  });
in
{
  ros2acceleration = pkg "sha256-e9shLvSDPNgJySmQ+3rjQ9Uvtpn9dRq+eiK9JGp7MVg=" ".";
}
