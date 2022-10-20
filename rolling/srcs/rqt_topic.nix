{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_topic";
    rev = "c6183700ec8370762240e582cfec000cf4ee8bfd";
    hash = "sha256-w6Qyu//TisBRPwUrMII7+TZRc2m83tJ9Xv25Aaup/5s=";
    name = "ros-visualization-rqt_topic-c6183700ec8370762240e582cfec000cf4ee8bfd";
  });
in
{
  rqt_topic = pkg "sha256-w6Qyu//TisBRPwUrMII7+TZRc2m83tJ9Xv25Aaup/5s=" ".";
}
