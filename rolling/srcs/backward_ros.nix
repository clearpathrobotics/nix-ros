{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "pal-robotics";
    repo = "backward_ros";
    rev = "1516972d99b6efa217421df8a6165688a1846cf3";
    hash = "sha256-d5LKkOQJoG5SRyGB5rSs0mtLMVMhSidrT+z1bIFZ6Mc=";
    name = "pal-robotics-backward_ros-1516972d99b6efa217421df8a6165688a1846cf3";
  });
in
{
  backward_ros = pkg "sha256-d5LKkOQJoG5SRyGB5rSs0mtLMVMhSidrT+z1bIFZ6Mc=" ".";
}
