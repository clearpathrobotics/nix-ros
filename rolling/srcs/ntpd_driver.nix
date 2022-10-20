{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "vooon";
    repo = "ntpd_driver";
    rev = "5f8352554b3f8e353be2bcfd03895c9bf768c7d0";
    hash = "sha256-tm50bII3cW6Dkp+XpXblEEP7P0613UQB1Ck1rptsNlo=";
    name = "vooon-ntpd_driver-5f8352554b3f8e353be2bcfd03895c9bf768c7d0";
  });
in
{
  ntpd_driver = pkg "sha256-tm50bII3cW6Dkp+XpXblEEP7P0613UQB1Ck1rptsNlo=" ".";
}
