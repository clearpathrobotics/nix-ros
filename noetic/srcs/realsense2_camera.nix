{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "IntelRealSense";
    repo = "realsense-ros";
    rev = "development";
    hash = "sha256-+9oGkBZ/OWR/DccWT2UaTQnxuBrFHINO+bp7Z/m+Hec=";
    name = "IntelRealSense-realsense-ros-development";
  });
in
{
  realsense2_camera = pkg "sha256-owUFbZruy4SSxIuiZveQJyJ4CYcOoY7UAnkC+pW5lpE=" "realsense2_camera";
  realsense2_description = pkg "sha256-XMrc90iRdG8V56ZFQS8RDqPLXBLjAR33LQXCxkuQo6Q=" "realsense2_description";
}
