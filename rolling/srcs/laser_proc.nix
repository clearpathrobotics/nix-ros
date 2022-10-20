{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "laser_proc";
    rev = "6efa6d4bfce0ad4fe625c2f290e1bdc548e443a4";
    hash = "sha256-h2lPjaJimCF/20eVEH3+ZS7CDqoML9voXq2B0x32NSY=";
    name = "ros-perception-laser_proc-6efa6d4bfce0ad4fe625c2f290e1bdc548e443a4";
  });
in
{
  laser_proc = pkg "sha256-h2lPjaJimCF/20eVEH3+ZS7CDqoML9voXq2B0x32NSY=" ".";
}
