{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-planning";
    repo = "moveit_msgs";
    rev = "45820c507a418256abd3808e86ea8be9235701f0";
    hash = "sha256-j2kN0/aZXgqQgw3wkRghueiY+X/URho8qm57Ze8n1y0=";
    name = "ros-planning-moveit_msgs-45820c507a418256abd3808e86ea8be9235701f0";
  });
in
{
  moveit_msgs = pkg "sha256-j2kN0/aZXgqQgw3wkRghueiY+X/URho8qm57Ze8n1y0=" ".";
}
