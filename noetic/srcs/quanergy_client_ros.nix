{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "QuanergySystems";
    repo = "quanergy_client_ros";
    rev = "e95dc4e710998b17ed12a6f0a0c0330124515f57";
    hash = "sha256-AeHoL83/b0sUSebCqYlHE7rNy6Wx1jSFJs02/BsfQ30=";
    name = "QuanergySystems-quanergy_client_ros-e95dc4e710998b17ed12a6f0a0c0330124515f57";
  });
in
{
  quanergy_client_ros = pkg "sha256-AeHoL83/b0sUSebCqYlHE7rNy6Wx1jSFJs02/BsfQ30=" ".";
}
