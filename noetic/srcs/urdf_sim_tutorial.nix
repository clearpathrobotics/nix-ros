{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "urdf_sim_tutorial";
    rev = "3c5a4f7c9ff691300a04f4be32eaf3bc28144088";
    hash = "sha256-SxPoGLjhv41lxio8WBMAf4oeFd8+ebOhRsq049SXQMQ=";
    name = "ros-urdf_sim_tutorial-3c5a4f7c9ff691300a04f4be32eaf3bc28144088";
  });
in
{
  urdf_sim_tutorial = pkg "sha256-SxPoGLjhv41lxio8WBMAf4oeFd8+ebOhRsq049SXQMQ=" ".";
}
