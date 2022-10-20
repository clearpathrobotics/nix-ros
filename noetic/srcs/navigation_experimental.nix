{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-planning";
    repo = "navigation_experimental";
    rev = "2c4a335f5d7ec53784df77c308731ec11a44dfec";
    hash = "sha256-xutAVeVezFwNNuef0qFgXc+C+QlDYcFxvuB2u1QrmTQ=";
    name = "ros-planning-navigation_experimental-2c4a335f5d7ec53784df77c308731ec11a44dfec";
  });
in
{
  assisted_teleop = pkg "sha256-NUEhH4Dhv3IAq9y6AdUfH1LSwbphqdGa/zeDMXUaCnY=" "assisted_teleop";
  goal_passer = pkg "sha256-evibOOF6KTpqotCFoiFS98P+Bu1HrkNUJVI/CF7tEYw=" "goal_passer";
  navigation_experimental = pkg "sha256-8erktgMxlcXopXuO9bJ7xmvdBIVe58W5GunP9idnxjg=" "navigation_experimental";
  pose_base_controller = pkg "sha256-ZYdbzGzbdCnQcZ+9HuOilc3qLQFSHSoI24BtYvJDPTg=" "pose_base_controller";
  pose_follower = pkg "sha256-g6kgumgaNZ0+72Xgasfc1PW4ZnezAO/ftVp0IH//EU8=" "pose_follower";
  sbpl_lattice_planner = pkg "sha256-LCu/QPPISrsm6YOB2QZFlmlRckCldfWUyAvnQvf0wjw=" "sbpl_lattice_planner";
  sbpl_recovery = pkg "sha256-Ac8w2QX3CHY+2sqXFhnQRcmCYAVgKJIc62mllFFwdno=" "sbpl_recovery";
  twist_recovery = pkg "sha256-EMYjWtNdy2B0Bi+/9gPUIt83b4S9KaysbmcxGWoffOI=" "twist_recovery";
}
