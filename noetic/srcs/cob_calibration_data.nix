{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ipa320";
    repo = "cob_calibration_data";
    rev = "abc23bce04891c8ef552459153b2ccaa253d2f75";
    hash = "sha256-NBWJrAmjDCdI6a1FjlPolTDVJVhg9oqRDg0AOSe4GNU=";
    name = "ipa320-cob_calibration_data-abc23bce04891c8ef552459153b2ccaa253d2f75";
  });
in
{
  cob_calibration_data = pkg "sha256-NBWJrAmjDCdI6a1FjlPolTDVJVhg9oqRDg0AOSe4GNU=" ".";
}
