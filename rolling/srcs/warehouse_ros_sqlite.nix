{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-planning";
    repo = "warehouse_ros_sqlite";
    rev = "901a62e263b1a210db7c9f4a952b14d9e83b93b2";
    hash = "sha256-/v5m/tYAkTIGLtTK+UOEfX0+Xg6h5mC6ZtSt5NfY8bQ=";
    name = "ros-planning-warehouse_ros_sqlite-901a62e263b1a210db7c9f4a952b14d9e83b93b2";
  });
in
{
  warehouse_ros_sqlite = pkg "sha256-/v5m/tYAkTIGLtTK+UOEfX0+Xg6h5mC6ZtSt5NfY8bQ=" ".";
}
