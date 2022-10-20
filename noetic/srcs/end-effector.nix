{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ADVRHumanoids";
    repo = "ROSEndEffector";
    rev = "09a70f01940d00ef21b18ee748b7a41a6b347c7e";
    hash = "sha256-wg/07aw91OtMP9YT4I7L1p+umaAho26AiNkjjj9Xr2s=";
    name = "ADVRHumanoids-ROSEndEffector-09a70f01940d00ef21b18ee748b7a41a6b347c7e";
  });
in
{
  end_effector = pkg "sha256-wg/07aw91OtMP9YT4I7L1p+umaAho26AiNkjjj9Xr2s=" ".";
}
