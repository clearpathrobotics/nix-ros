{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "eigen_stl_containers";
    rev = "d2a41f0b73fb6ede3d9d2f23dd9a3e79ffd9a89e";
    hash = "sha256-Rj2PdcEHracHnr7A04YnIJr/TDESoccwF/75nEzUbxk=";
    name = "ros-eigen_stl_containers-d2a41f0b73fb6ede3d9d2f23dd9a3e79ffd9a89e";
  });
in
{
  eigen_stl_containers = pkg "sha256-Rj2PdcEHracHnr7A04YnIJr/TDESoccwF/75nEzUbxk=" ".";
}
