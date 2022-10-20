{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "OctoMap";
    repo = "octomap_ros";
    rev = "dc49b9b3c81956ba5553a83047f162242450f692";
    hash = "sha256-RD+gwS31k6UPEKegLdv6kSOha4ju5W2T5EwCpMkZ5Lc=";
    name = "OctoMap-octomap_ros-dc49b9b3c81956ba5553a83047f162242450f692";
  });
in
{
  octomap_ros = pkg "sha256-RD+gwS31k6UPEKegLdv6kSOha4ju5W2T5EwCpMkZ5Lc=" ".";
}
