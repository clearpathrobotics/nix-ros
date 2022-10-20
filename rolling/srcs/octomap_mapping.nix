{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "OctoMap";
    repo = "octomap_mapping";
    rev = "ff5ded940ca7b04ac995fe2ce5de1e1f353b438a";
    hash = "sha256-Sg+1vlme0wW+WWgy7ypIKKldKQ8ttqihUdGMmkr5z4I=";
    name = "OctoMap-octomap_mapping-ff5ded940ca7b04ac995fe2ce5de1e1f353b438a";
  });
in
{
  octomap_mapping = pkg "sha256-8X4kZ4yCTELXt6wgdUt0ftR0Nn+TvtK9cMWDMgapEhM=" "octomap_mapping";
  octomap_server = pkg "sha256-VDumaT9CL7bD5vdrwsSz57RfL0ddG+BY3MunxmJ2z8Y=" "octomap_server";
}
