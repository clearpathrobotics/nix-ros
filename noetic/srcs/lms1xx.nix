{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "clearpathrobotics";
    repo = "lms1xx";
    rev = "d80907e539d72a373002e9d68e4b982eb4b6d7ce";
    hash = "sha256-TgCHp5Hq7FSeV8hyYTsZJN6NmECAuyEf7dFecmtOYx8=";
    name = "clearpathrobotics-lms1xx-d80907e539d72a373002e9d68e4b982eb4b6d7ce";
  });
in
{
  lms1xx = pkg "sha256-TgCHp5Hq7FSeV8hyYTsZJN6NmECAuyEf7dFecmtOYx8=" ".";
}
