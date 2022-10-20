{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_top";
    rev = "ec7a173242f9baa834f05f4bfe804490f0cba151";
    hash = "sha256-qhm2j1IxfWIvPK3LQKKtAswufZn33XUy+Cleupta/PY=";
    name = "ros-visualization-rqt_top-ec7a173242f9baa834f05f4bfe804490f0cba151";
  });
in
{
  rqt_top = pkg "sha256-qhm2j1IxfWIvPK3LQKKtAswufZn33XUy+Cleupta/PY=" ".";
}
