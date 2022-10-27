{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros4hri";
    repo = "pyhri";
    rev = "318af659298d5d502f0e98cdc1c721eeebc0159b";
    hash = "sha256-5pOXh1RxMIZWZ3/7BmAttK6IT69oo2Tw67CA0NgO7JA=";
    name = "ros4hri-pyhri-318af659298d5d502f0e98cdc1c721eeebc0159b";
  });
in
{
  pyhri = pkg "sha256-5pOXh1RxMIZWZ3/7BmAttK6IT69oo2Tw67CA0NgO7JA=" ".";
}
