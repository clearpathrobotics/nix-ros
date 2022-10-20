{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "ros_environment";
    rev = "090da7f2ba21fc17f44bba782fb39f3e6da93308";
    hash = "sha256-7vkzE71nQ176vZ9j4TT7gF0qi2cs9K6mhHy+wdVH8s4=";
    name = "ros-ros_environment-090da7f2ba21fc17f44bba782fb39f3e6da93308";
  });
in
{
  ros_environment = pkg "sha256-7vkzE71nQ176vZ9j4TT7gF0qi2cs9K6mhHy+wdVH8s4=" ".";
}
