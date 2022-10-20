{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "pal-robotics";
    repo = "aruco_ros";
    rev = "f29b33258dccb52ba21ab01726c6921857269b3e";
    hash = "sha256-eAzZaRiKlguaIjttj0HX9Zt/QWTU2ZVeAdWqEfNVcKw=";
    name = "pal-robotics-aruco_ros-f29b33258dccb52ba21ab01726c6921857269b3e";
  });
in
{
  aruco = pkg "sha256-pfZstX1V86n274Qlx9bTxS9XPob3EiAT+DDrzhoeX4A=" "aruco";
  aruco_msgs = pkg "sha256-zS2wtgxJe0YbjoNHooOOfgyu9qrvV0SaoYMidG79+aA=" "aruco_msgs";
  aruco_ros = pkg "sha256-FD0L61TIArViMh9HWgnjQKstkcvOc67vaSYyiKngm5w=" "aruco_ros";
}
