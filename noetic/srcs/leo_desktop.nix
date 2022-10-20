{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "LeoRover";
    repo = "leo_desktop";
    rev = "6d92077d10e6b4259b97f41514785b9eb8cd6cf6";
    hash = "sha256-W7Y7M8mmEGFvZ/GwHUE0NADaybvTT73zDGCas5sOMP4=";
    name = "LeoRover-leo_desktop-6d92077d10e6b4259b97f41514785b9eb8cd6cf6";
  });
in
{
  leo_desktop = pkg "sha256-nbvIzU2Ok9QVLI2VYVa6ebm4jlwqtFREF+YoaEjwoTU=" "leo_desktop";
  leo_viz = pkg "sha256-mUIfeZ2OVKc1VTx7pqcSakwBKMz8mCA0NHG4yfx/61Q=" "leo_viz";
}
