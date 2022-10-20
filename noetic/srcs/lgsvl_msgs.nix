{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "lgsvl";
    repo = "lgsvl_msgs";
    rev = "0e5e7bd3660dcd25fefef44bef093cd034875769";
    hash = "sha256-Pd5TP0wLuUr0/m+WvLpkvURpB0d0hbik3SOPkifg8YU=";
    name = "lgsvl-lgsvl_msgs-0e5e7bd3660dcd25fefef44bef093cd034875769";
  });
in
{
  lgsvl_msgs = pkg "sha256-Pd5TP0wLuUr0/m+WvLpkvURpB0d0hbik3SOPkifg8YU=" ".";
}
