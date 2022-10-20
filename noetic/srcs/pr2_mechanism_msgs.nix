{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "pr2";
    repo = "pr2_mechanism_msgs";
    rev = "992b4612fd96f7c8ed6faf88f8a233d737750633";
    hash = "sha256-a0Hbujt4/unm2iyJptPsF2L4cPbwjoANbfTA/WFjm5s=";
    name = "pr2-pr2_mechanism_msgs-992b4612fd96f7c8ed6faf88f8a233d737750633";
  });
in
{
  pr2_mechanism_msgs = pkg "sha256-a0Hbujt4/unm2iyJptPsF2L4cPbwjoANbfTA/WFjm5s=" ".";
}
