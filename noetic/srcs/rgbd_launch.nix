{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "rgbd_launch";
    rev = "2a29e78fab15a63fd1cefdb4e0166f08004bf8d4";
    hash = "sha256-6/ol7r/X04vnojVEjjtohte/oQqtD96daStGVW0DGHo=";
    name = "ros-drivers-rgbd_launch-2a29e78fab15a63fd1cefdb4e0166f08004bf8d4";
  });
in
{
  rgbd_launch = pkg "sha256-6/ol7r/X04vnojVEjjtohte/oQqtD96daStGVW0DGHo=" ".";
}
