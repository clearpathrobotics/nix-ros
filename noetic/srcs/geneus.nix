{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "jsk-ros-pkg";
    repo = "geneus";
    rev = "ec388e279ce4fd52ec78a4144ba52014ab4dd824";
    hash = "sha256-RioQc0+nUtvzFcU4BgHD/6CJY+Xqk2hDTbbz5I6X5kM=";
    name = "jsk-ros-pkg-geneus-ec388e279ce4fd52ec78a4144ba52014ab4dd824";
  });
in
{
  geneus = pkg "sha256-RioQc0+nUtvzFcU4BgHD/6CJY+Xqk2hDTbbz5I6X5kM=" ".";
}
