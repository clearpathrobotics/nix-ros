{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "tradr-project";
    repo = "static_transform_mux";
    rev = "05ecfbdfcc005469a0e1d985424ba717573603bc";
    hash = "sha256-GIG5vlO65/xWdey4qMeakPZACbu9e7lWtgy6QU/pPmI=";
    name = "tradr-project-static_transform_mux-05ecfbdfcc005469a0e1d985424ba717573603bc";
  });
in
{
  static_transform_mux = pkg "sha256-GIG5vlO65/xWdey4qMeakPZACbu9e7lWtgy6QU/pPmI=" ".";
}
