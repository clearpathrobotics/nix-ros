{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_shell";
    rev = "5fbb4098f817016d7844087d9e7c03e29f1a7e38";
    hash = "sha256-sRyNFwX7PDl+hxv1KAbOS9A74mIiGi5gob9r68lzsDo=";
    name = "ros-visualization-rqt_shell-5fbb4098f817016d7844087d9e7c03e29f1a7e38";
  });
in
{
  rqt_shell = pkg "sha256-sRyNFwX7PDl+hxv1KAbOS9A74mIiGi5gob9r68lzsDo=" ".";
}
