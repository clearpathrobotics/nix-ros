{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "urg_node_msgs";
    rev = "0c4bfe759b309f97d7b57a0f0f24044b106fb85c";
    hash = "sha256-IBl7J8akPgn5ni5/8kPGDOh4Fklto+RggWCIxGald/w=";
    name = "ros-drivers-urg_node_msgs-0c4bfe759b309f97d7b57a0f0f24044b106fb85c";
  });
in
{
  urg_node_msgs = pkg "sha256-IBl7J8akPgn5ni5/8kPGDOh4Fklto+RggWCIxGald/w=" ".";
}
