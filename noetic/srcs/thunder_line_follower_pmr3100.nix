{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ThundeRatz";
    repo = "thunder_line_follower_pmr3100";
    rev = "63d83afa9cc0688f4e03a399cd8e9996e38caa1d";
    hash = "sha256-3dqRjLNCIbwcSRgpjiE3aLcmLCmodCmAq3cUAig6Z6U=";
    name = "ThundeRatz-thunder_line_follower_pmr3100-63d83afa9cc0688f4e03a399cd8e9996e38caa1d";
  });
in
{
  thunder_line_follower_pmr3100 = pkg "sha256-3dqRjLNCIbwcSRgpjiE3aLcmLCmodCmAq3cUAig6Z6U=" ".";
}
