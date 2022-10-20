{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-planning";
    repo = "moveit_visual_tools";
    rev = "c166f8ee6412023b4183fc091abe6acbcdba2448";
    hash = "sha256-XYpuwFclrYDONvVrcoue+VIRTPw/d6s/C9ztD7D5qPQ=";
    name = "ros-planning-moveit_visual_tools-c166f8ee6412023b4183fc091abe6acbcdba2448";
  });
in
{
  moveit_visual_tools = pkg "sha256-XYpuwFclrYDONvVrcoue+VIRTPw/d6s/C9ztD7D5qPQ=" ".";
}
