{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros4hri";
    repo = "libhri";
    rev = "8f457953c4df25d6e711731197350e140d52df2e";
    hash = "sha256-i+xSFOXGgkD+LhmS1G2z5pmII765EF1+jLETzm07c50=";
    name = "ros4hri-libhri-8f457953c4df25d6e711731197350e140d52df2e";
  });
in
{
  hri = pkg "sha256-i+xSFOXGgkD+LhmS1G2z5pmII765EF1+jLETzm07c50=" ".";
}
