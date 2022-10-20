{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros4hri";
    repo = "hri_msgs";
    rev = "edba9341a078ca447ae04f243cd9481d4d1b3686";
    hash = "sha256-+Jer/04LQRPk738mCib2fQCERJTvPTGAvxnVmGgtMvc=";
    name = "ros4hri-hri_msgs-edba9341a078ca447ae04f243cd9481d4d1b3686";
  });
in
{
  hri_msgs = pkg "sha256-+Jer/04LQRPk738mCib2fQCERJTvPTGAvxnVmGgtMvc=" ".";
}
