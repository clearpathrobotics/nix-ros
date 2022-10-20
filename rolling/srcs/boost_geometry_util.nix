{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "OUXT-Polaris";
    repo = "boost_geometry_util";
    rev = "9269f9caf4b8bd7c823bf9889ed0a572ae627cef";
    hash = "sha256-d0zgg6wttfjRbjVkFNy/N+QAz24HKzlcFwG87QOfyVA=";
    name = "OUXT-Polaris-boost_geometry_util-9269f9caf4b8bd7c823bf9889ed0a572ae627cef";
  });
in
{
  boost_geometry_util = pkg "sha256-d0zgg6wttfjRbjVkFNy/N+QAz24HKzlcFwG87QOfyVA=" ".";
}
