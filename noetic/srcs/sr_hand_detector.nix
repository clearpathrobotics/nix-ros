{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "shadow-robot";
    repo = "sr_hand_detector";
    rev = "2debf81c2a92654f11172a4c44589a7c927b9611";
    hash = "sha256-iNP+OcadNFvVfRscKW2dUURVepF3I4sMc+SeL6WHoy4=";
    name = "shadow-robot-sr_hand_detector-2debf81c2a92654f11172a4c44589a7c927b9611";
  });
in
{
  sr_hand_detector = pkg "sha256-iNP+OcadNFvVfRscKW2dUURVepF3I4sMc+SeL6WHoy4=" ".";
}
