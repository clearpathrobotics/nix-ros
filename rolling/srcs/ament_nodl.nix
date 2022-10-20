{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ubuntu-robotics";
    repo = "ament_nodl";
    rev = "597ca21765d0dd3fbaa6200247d8acdc9c4f2e0e";
    hash = "sha256-vSZgEIBtbtrB3Jv2/e4M53oF3NDjpJxvH/imiMbBzpc=";
    name = "ubuntu-robotics-ament_nodl-597ca21765d0dd3fbaa6200247d8acdc9c4f2e0e";
  });
in
{
  ament_nodl = pkg "sha256-vSZgEIBtbtrB3Jv2/e4M53oF3NDjpJxvH/imiMbBzpc=" ".";
}
