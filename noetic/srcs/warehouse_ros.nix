{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-planning";
    repo = "warehouse_ros";
    rev = "175a0a47718ae1636b5789f56f7030385cc6f17a";
    hash = "sha256-I1NbDwevQkb2uUEofXjJywhkVfemjri6fWM2roUAGRs=";
    name = "ros-planning-warehouse_ros-175a0a47718ae1636b5789f56f7030385cc6f17a";
  });
in
{
  warehouse_ros = pkg "sha256-I1NbDwevQkb2uUEofXjJywhkVfemjri6fWM2roUAGRs=" ".";
}
