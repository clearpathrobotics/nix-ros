{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "at-wat";
    repo = "neonavigation_rviz_plugins";
    rev = "1a3bf5825c7420aa93f66ef890a59996ab516e86";
    hash = "sha256-Qh9FLi+toI8skWgxVAtCy5/660TKlBbrZ+dYsFxuq/k=";
    name = "at-wat-neonavigation_rviz_plugins-1a3bf5825c7420aa93f66ef890a59996ab516e86";
  });
in
{
  costmap_cspace_rviz_plugins = pkg "sha256-AZXjHbkeKfD4qwfQ4109dCTQVvKOpA6QfPkrNsvaiOc=" "costmap_cspace_rviz_plugins";
  neonavigation_rviz_plugins = pkg "sha256-OpxGl1p5+QI+5J6YQ2P3GuDz+0fXwJKCojzjEFmyfJo=" "neonavigation_rviz_plugins";
  trajectory_tracker_rviz_plugins = pkg "sha256-B82uDHEztq8cpGy2+hlPDaV++lB0T2p2BJZwgVI70q8=" "trajectory_tracker_rviz_plugins";
}
