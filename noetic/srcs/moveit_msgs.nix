{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-planning";
    repo = "moveit_msgs";
    rev = "2b9c921f0e519704f898ebaec1663a4dd25b5203";
    hash = "sha256-YAr622t5t9JSY97IT/EY4Ji1y0kqHuwTbJhQVd624sY=";
    name = "ros-planning-moveit_msgs-2b9c921f0e519704f898ebaec1663a4dd25b5203";
  });
in
{
  moveit_msgs = pkg "sha256-YAr622t5t9JSY97IT/EY4Ji1y0kqHuwTbJhQVd624sY=" ".";
}
