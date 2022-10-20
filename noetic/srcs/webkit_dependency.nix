{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "webkit_dependency";
    rev = "b7a00699538c2a167356ddb459a986646d4e466a";
    hash = "sha256-EQorv4sv/h7CBEYdsR+bw1fHoJX8Nhk0yyMxOct57cU=";
    name = "ros-visualization-webkit_dependency-b7a00699538c2a167356ddb459a986646d4e466a";
  });
in
{
  webkit_dependency = pkg "sha256-EQorv4sv/h7CBEYdsR+bw1fHoJX8Nhk0yyMxOct57cU=" ".";
}
