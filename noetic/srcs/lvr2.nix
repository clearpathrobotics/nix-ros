{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "uos";
    repo = "lvr2";
    rev = "9bb03a30441b027c39db967318877e03725112d5";
    hash = "sha256-c5GP1mF9xWCgrcB59cMHwGpFY/fDBCs0zKGj9geNO7o=";
    name = "uos-lvr2-9bb03a30441b027c39db967318877e03725112d5";
  });
in
{
  lvr2 = pkg "sha256-c5GP1mF9xWCgrcB59cMHwGpFY/fDBCs0zKGj9geNO7o=" ".";
}
