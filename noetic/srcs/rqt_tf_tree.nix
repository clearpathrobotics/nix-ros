{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_tf_tree";
    rev = "0a33bd11c5ec7f1b24f37a6cf2f670a8706401bd";
    hash = "sha256-AsCxyE4X6JEpIJm3wCR23gfv6uyHSVhhX5d/jd3J4/U=";
    name = "ros-visualization-rqt_tf_tree-0a33bd11c5ec7f1b24f37a6cf2f670a8706401bd";
  });
in
{
  rqt_tf_tree = pkg "sha256-AsCxyE4X6JEpIJm3wCR23gfv6uyHSVhhX5d/jd3J4/U=" ".";
}
