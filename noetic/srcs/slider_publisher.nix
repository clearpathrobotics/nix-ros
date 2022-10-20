{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "oKermorgant";
    repo = "slider_publisher";
    rev = "6f5d48a1fa2d7c1595158d4b29d3d625c84b2d91";
    hash = "sha256-d2H0exOfuxpTved5SIU1q7Rp4y1Y7L2AT5Av3q2Qje8=";
    name = "oKermorgant-slider_publisher-6f5d48a1fa2d7c1595158d4b29d3d625c84b2d91";
  });
in
{
  slider_publisher = pkg "sha256-d2H0exOfuxpTved5SIU1q7Rp4y1Y7L2AT5Av3q2Qje8=" ".";
}
