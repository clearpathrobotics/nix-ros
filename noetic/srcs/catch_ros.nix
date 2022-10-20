{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "AIS-Bonn";
    repo = "catch_ros";
    rev = "97c488d450d82780bd69c0d58997d0ad8e142e58";
    hash = "sha256-KOMGoMcrT+gnmS69thBlt9qb0PAeU30FymCTkb9ryC0=";
    name = "AIS-Bonn-catch_ros-97c488d450d82780bd69c0d58997d0ad8e142e58";
  });
in
{
  catch_ros = pkg "sha256-KOMGoMcrT+gnmS69thBlt9qb0PAeU30FymCTkb9ryC0=" ".";
}
