{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "roboception";
    repo = "rc_genicam_driver_ros";
    rev = "68e97903d72c5a840b93425903031d336ae97db8";
    hash = "sha256-iFP0RNcqjxYkx+q6ZOVBCurbU1V5Df7441xXO/qx6o8=";
    name = "roboception-rc_genicam_driver_ros-68e97903d72c5a840b93425903031d336ae97db8";
  });
in
{
  rc_genicam_driver = pkg "sha256-iFP0RNcqjxYkx+q6ZOVBCurbU1V5Df7441xXO/qx6o8=" ".";
}
