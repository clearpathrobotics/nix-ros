{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "fictionlab";
    repo = "aruco_opencv";
    rev = "8dd38f38bc0fcbcbefa3ad18b9bda926244e02f8";
    hash = "sha256-nKi6/VBoFjkUYwDzCwAY61XRkULldtsJxN67X0tm/i8=";
    name = "fictionlab-aruco_opencv-8dd38f38bc0fcbcbefa3ad18b9bda926244e02f8";
  });
in
{
  aruco_opencv = pkg "sha256-7CArv/Br+eJo+WrbnQ0quNGnLy4xbf2V2GcJtRsRyLk=" "aruco_opencv";
  aruco_opencv_msgs = pkg "sha256-zqjUjXjOwAqDdhUG8BoGk6eGD1BXYdCrDupAckYZP5M=" "aruco_opencv_msgs";
}
