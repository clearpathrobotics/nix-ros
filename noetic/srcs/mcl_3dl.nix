{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "at-wat";
    repo = "mcl_3dl";
    rev = "bbc5fa4fdb443019cf0dcf08b0899267bf3c1a59";
    hash = "sha256-aBpU+/cQUss8OpakaFPEuq5ZElqKOeDhqh5TwPytbUI=";
    name = "at-wat-mcl_3dl-bbc5fa4fdb443019cf0dcf08b0899267bf3c1a59";
  });
in
{
  mcl_3dl = pkg "sha256-aBpU+/cQUss8OpakaFPEuq5ZElqKOeDhqh5TwPytbUI=" ".";
}
