{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "tilk";
    repo = "rtcm_msgs";
    rev = "b4bba1113eb24c9126651f665919d3289ca1085e";
    hash = "sha256-MLbs0N0KATm9nUGwhnry/Q2tpxaYGdpGTvzXLza9bjM=";
    name = "tilk-rtcm_msgs-b4bba1113eb24c9126651f665919d3289ca1085e";
  });
in
{
  rtcm_msgs = pkg "sha256-MLbs0N0KATm9nUGwhnry/Q2tpxaYGdpGTvzXLza9bjM=" ".";
}
