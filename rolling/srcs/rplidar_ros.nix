{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "allenh1";
    repo = "rplidar_ros";
    rev = "6fc037db67e234ad7a4272cc2331afeb92ed7200";
    hash = "sha256-lOiYrTggsDiQb9sCYtWAup4+kVoMnpSYqKqWGtnb2AU=";
    name = "allenh1-rplidar_ros-6fc037db67e234ad7a4272cc2331afeb92ed7200";
  });
in
{
  rplidar_ros = pkg "sha256-lOiYrTggsDiQb9sCYtWAup4+kVoMnpSYqKqWGtnb2AU=" ".";
}
