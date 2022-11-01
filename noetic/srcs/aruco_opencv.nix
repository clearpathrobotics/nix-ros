{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "fictionlab";
    repo = "aruco_opencv";
    rev = "f6bf47c0cc9763ea17e42902bab9071526d285e7";
    hash = "sha256-S0MsXjaUzgz1Fy78UROz41m3Ski3hmCs9e9WVHJTWTw=";
    name = "fictionlab-aruco_opencv-f6bf47c0cc9763ea17e42902bab9071526d285e7";
  });
in
{
  aruco_opencv = pkg "sha256-06M7xCHgM2lZ4VGgL1bCiKab2I/eqeb69GvT+eFiYjk=" "aruco_opencv";
  aruco_opencv_msgs = pkg "sha256-zqjUjXjOwAqDdhUG8BoGk6eGD1BXYdCrDupAckYZP5M=" "aruco_opencv_msgs";
}
