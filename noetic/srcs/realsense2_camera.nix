{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "IntelRealSense";
    repo = "realsense-ros";
    rev = "e4938bbbfd7b285fe71f81fe69cebcc76dbf72fc";
    hash = "sha256-ow8Iiuq2SgKcW3aPx2kglpzteTmlmt5TIThBhDarAL4=";
    name = "IntelRealSense-realsense-ros-e4938bbbfd7b285fe71f81fe69cebcc76dbf72fc";
  });
in
{
  realsense2_camera = pkg "sha256-owUFbZruy4SSxIuiZveQJyJ4CYcOoY7UAnkC+pW5lpE=" "realsense2_camera";
  realsense2_description = pkg "sha256-XMrc90iRdG8V56ZFQS8RDqPLXBLjAR33LQXCxkuQo6Q=" "realsense2_description";
}
