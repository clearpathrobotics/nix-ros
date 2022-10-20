{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "openni_camera";
    rev = "e898a88022efbc41b8d73bbb147235429afe254c";
    hash = "sha256-U1TkM8iAglZ6rcqOkDT44VsY+ZV0VK6XV4AsJqR+OLA=";
    name = "ros-drivers-openni_camera-e898a88022efbc41b8d73bbb147235429afe254c";
  });
in
{
  openni_camera = pkg "sha256-Ul37o/xiRiekYJmsPFduCPE4KS13zZTUFjkGhWkkiR4=" "openni_camera";
  openni_description = pkg "sha256-mW4AMBSFtuaRDAZ6puWpGX3N95MAnIzsaVqs6a19P5I=" "openni_description";
  openni_launch = pkg "sha256-UPmDcE5p6y1cZm960uo5+Pg3krFN3mKExu/uG4Hhvrw=" "openni_launch";
}
