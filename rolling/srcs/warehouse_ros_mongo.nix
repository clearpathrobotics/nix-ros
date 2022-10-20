{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-planning";
    repo = "warehouse_ros_mongo";
    rev = "7f6a901eef21225141a2d68c82f3d2ec8373bcab";
    hash = "sha256-oAOutnpbfdpnpUQqnapH4SWQkAoGvfNDezuR53Ka9Mo=";
    name = "ros-planning-warehouse_ros_mongo-7f6a901eef21225141a2d68c82f3d2ec8373bcab";
  });
in
{
  warehouse_ros_mongo = pkg "sha256-oAOutnpbfdpnpUQqnapH4SWQkAoGvfNDezuR53Ka9Mo=" ".";
}
