{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ROBOTIS-GIT";
    repo = "robotis_manipulator";
    rev = "4086fffbe8157049eb2c4b1c4e61fed3c80cfa87";
    hash = "sha256-UUiAG5DVsMDxShGinSWTrtJkEeBi092eT6FfM7L00Zc=";
    name = "ROBOTIS-GIT-robotis_manipulator-4086fffbe8157049eb2c4b1c4e61fed3c80cfa87";
  });
in
{
  robotis_manipulator = pkg "sha256-UUiAG5DVsMDxShGinSWTrtJkEeBi092eT6FfM7L00Zc=" ".";
}
