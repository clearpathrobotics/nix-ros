{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ethz-adrl";
    repo = "ifopt";
    rev = "0b6ca7bda74169e85021000e46c7ba5a706e868c";
    hash = "sha256-8r2zfsele4IPRupOWN2eu7L3uaNVTK7XqwOstbKuHXg=";
    name = "ethz-adrl-ifopt-0b6ca7bda74169e85021000e46c7ba5a706e868c";
  });
in
{
  ifopt = pkg "sha256-8r2zfsele4IPRupOWN2eu7L3uaNVTK7XqwOstbKuHXg=" ".";
}
