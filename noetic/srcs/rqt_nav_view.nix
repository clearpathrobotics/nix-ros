{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_nav_view";
    rev = "e7277bf906ade7447517c5e5877acc3013e2e771";
    hash = "sha256-nI9bgCfv1Q94kkZs65QqpHeMObX917rlKOvWj/SUbio=";
    name = "ros-visualization-rqt_nav_view-e7277bf906ade7447517c5e5877acc3013e2e771";
  });
in
{
  rqt_nav_view = pkg "sha256-nI9bgCfv1Q94kkZs65QqpHeMObX917rlKOvWj/SUbio=" ".";
}
