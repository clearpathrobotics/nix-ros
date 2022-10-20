{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "tu-darmstadt-ros-pkg";
    repo = "hector_localization";
    rev = "c2c3df188bd41127d28da7a4824f0a0e117dedaa";
    hash = "sha256-3BCv2oZIJI7E2OWW6JhUOezAEW7QyznBd36yrNQiylc=";
    name = "tu-darmstadt-ros-pkg-hector_localization-c2c3df188bd41127d28da7a4824f0a0e117dedaa";
  });
in
{
  hector_localization = pkg "sha256-pQgRqbuueJFftxCoKzMuRaskbVqXjNafC31a7fMooeI=" "hector_localization";
  hector_pose_estimation = pkg "sha256-pw8PPnGzACmgrtfBmYPTE5hI0dRX9+g0TWlaDWsPQ/o=" "hector_pose_estimation";
  hector_pose_estimation_core = pkg "sha256-W/OBbXGfv1m1uztpze9o825cWzTp1vrui2B8sQ8RXCA=" "hector_pose_estimation_core";
  message_to_tf = pkg "sha256-4OaET2k/pzb4Uo/uOdcjg6AjOJeF9XKvW1F6kt5BL8E=" "message_to_tf";
}
