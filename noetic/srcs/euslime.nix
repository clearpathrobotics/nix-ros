{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "jsk-ros-pkg";
    repo = "euslime";
    rev = "0e902f5bfcc95becc7ca069dbadb858280d7d82e";
    hash = "sha256-jRuv5ZMWDm35EfgVlYE4I5EbiKirr+tgNL+Vy3+Y93k=";
    name = "jsk-ros-pkg-euslime-0e902f5bfcc95becc7ca069dbadb858280d7d82e";
  });
in
{
  euslime = pkg "sha256-jRuv5ZMWDm35EfgVlYE4I5EbiKirr+tgNL+Vy3+Y93k=" ".";
}
