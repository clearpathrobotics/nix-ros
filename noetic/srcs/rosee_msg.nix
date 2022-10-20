{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ADVRHumanoids";
    repo = "rosee_msg";
    rev = "eb19c1fddf8dad4117773cd1104c2c8f8e19b0ab";
    hash = "sha256-DbLzBG4gJ/+ib1S4xF0rTD+d1IVCYJFzV/lTNvIGCX8=";
    name = "ADVRHumanoids-rosee_msg-eb19c1fddf8dad4117773cd1104c2c8f8e19b0ab";
  });
in
{
  rosee_msg = pkg "sha256-DbLzBG4gJ/+ib1S4xF0rTD+d1IVCYJFzV/lTNvIGCX8=" ".";
}
