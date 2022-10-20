{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "SBG-Systems";
    repo = "sbg_ros_driver";
    rev = "4684439988aa1268093a99efb3bfdae0caeba11b";
    hash = "sha256-5spCaapE/AKCLyUgYtjwcFfuLspeOqBvWyhXW6dd1Ds=";
    name = "SBG-Systems-sbg_ros_driver-4684439988aa1268093a99efb3bfdae0caeba11b";
  });
in
{
  sbg_driver = pkg "sha256-5spCaapE/AKCLyUgYtjwcFfuLspeOqBvWyhXW6dd1Ds=" ".";
}
