{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "stonier";
    repo = "ecl_tools";
    rev = "45edeb9313a951f37f2b68db10a9997c8c8e4f5d";
    hash = "sha256-U/JuWIpe6w8oR/yiag7w2HVmE5GFzFE4jY9MmU90rYY=";
    name = "stonier-ecl_tools-45edeb9313a951f37f2b68db10a9997c8c8e4f5d";
  });
in
{
  ecl_build = pkg "sha256-Ozch2lkzQNM3ejTVuvlHg8qUQkhDlhDkamLnUG92XLo=" "ecl_build";
  ecl_license = pkg "sha256-Ae8Cu9bRM9wxuMIwPLmO7H3J+cR+hnKFjAa4DB/tG7U=" "ecl_license";
  ecl_tools = pkg "sha256-IMbWk3ilrBgqjTCdHPUcDcDQNRqabzpGns+a64ac/ps=" "ecl_tools";
}
