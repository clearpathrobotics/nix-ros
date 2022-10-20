{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rcpputils";
    rev = "1bd32c72b355761b11dd9e35abe4d2cc32b7187a";
    hash = "sha256-iLzgfQjyGJudwX6+FDo5LjeYJQsDMRmpY/0dD5jvQQk=";
    name = "ros2-rcpputils-1bd32c72b355761b11dd9e35abe4d2cc32b7187a";
  });
in
{
  rcpputils = pkg "sha256-iLzgfQjyGJudwX6+FDo5LjeYJQsDMRmpY/0dD5jvQQk=" ".";
}
