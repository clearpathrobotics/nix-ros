{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "tango_icons_vendor";
    rev = "b7bf4ff9ff5b077cb1159460fbedecf4eb84e44a";
    hash = "sha256-jO6mYV2nlsljrlsrb3l6CZBT+7cL/PYAMIIRu8V/lxA=";
    name = "ros-visualization-tango_icons_vendor-b7bf4ff9ff5b077cb1159460fbedecf4eb84e44a";
  });
in
{
  tango_icons_vendor = pkg "sha256-jO6mYV2nlsljrlsrb3l6CZBT+7cL/PYAMIIRu8V/lxA=" ".";
}
