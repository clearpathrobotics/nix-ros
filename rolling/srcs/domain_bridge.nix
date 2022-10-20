{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "domain_bridge";
    rev = "6776de29838db5a9a73763d1590d27db3909225c";
    hash = "sha256-rsAjPBXhyXFh7LOva7HL3RRpl3Ub5x8roZZgDnMVGUc=";
    name = "ros2-domain_bridge-6776de29838db5a9a73763d1590d27db3909225c";
  });
in
{
  domain_bridge = pkg "sha256-rsAjPBXhyXFh7LOva7HL3RRpl3Ub5x8roZZgDnMVGUc=" ".";
}
