{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ihadzic";
    repo = "lsm_localization";
    rev = "de615ff3ab00382e5e7e119e9ecb92b164156233";
    hash = "sha256-QYwPuTmpzfQ+Otrr2Oc3gvxE3jbLnnGHRMfsv3b924A=";
    name = "ihadzic-lsm_localization-de615ff3ab00382e5e7e119e9ecb92b164156233";
  });
in
{
  lsm_localization = pkg "sha256-QYwPuTmpzfQ+Otrr2Oc3gvxE3jbLnnGHRMfsv3b924A=" ".";
}
