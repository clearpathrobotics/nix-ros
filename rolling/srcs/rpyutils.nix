{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rpyutils";
    rev = "15e82e7d3c864add229f25e9875f12da2cb1e5e6";
    hash = "sha256-HNGVa/W8xtbf4DQOccuvUnOL3wUjx0Zb3pM2X4JIAGY=";
    name = "ros2-rpyutils-15e82e7d3c864add229f25e9875f12da2cb1e5e6";
  });
in
{
  rpyutils = pkg "sha256-HNGVa/W8xtbf4DQOccuvUnOL3wUjx0Zb3pM2X4JIAGY=" ".";
}
