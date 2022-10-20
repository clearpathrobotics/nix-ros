{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "stack-of-tasks";
    repo = "dynamic-graph";
    rev = "2e7a70d5522d74c40e3f75540ca800564a48119e";
    hash = "sha256-D3Bs1SO6H3A1z7i3AY4gjSyX13pP0VP0avJnPEeDQ+8=";
    name = "stack-of-tasks-dynamic-graph-2e7a70d5522d74c40e3f75540ca800564a48119e";
  });
in
{
  dynamic-graph = pkg "sha256-D3Bs1SO6H3A1z7i3AY4gjSyX13pP0VP0avJnPEeDQ+8=" ".";
}
