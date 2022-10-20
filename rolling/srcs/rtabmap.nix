{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "introlab";
    repo = "rtabmap";
    rev = "8d23f19f6c2d3ddb222d63aab2960aaa3df59de4";
    hash = "sha256-zPWbBCYuidmJCGG3XDUzYBwjEiqbLoIVFG1tvK9ncdc=";
    name = "introlab-rtabmap-8d23f19f6c2d3ddb222d63aab2960aaa3df59de4";
  });
in
{
  rtabmap = pkg "sha256-zPWbBCYuidmJCGG3XDUzYBwjEiqbLoIVFG1tvK9ncdc=" ".";
}
