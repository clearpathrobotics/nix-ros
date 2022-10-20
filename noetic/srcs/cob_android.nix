{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ipa320";
    repo = "cob_android";
    rev = "7b4c1c407af2c947b74fea9f0d573e4408304156";
    hash = "sha256-tNLJsYY7tZj4Y0TqJy+PSayiJWUaLHLko/kMmvOBxWA=";
    name = "ipa320-cob_android-7b4c1c407af2c947b74fea9f0d573e4408304156";
  });
in
{
  cob_android = pkg "sha256-wpGMKJzBiQaSI863cnsN53bCbRX93SpAp86V4lOHGqc=" "cob_android";
  cob_android_msgs = pkg "sha256-k1iyipCdOIxBW2SU1M+3yiVRihFYHkTzd9q8wNW9QU4=" "cob_android_msgs";
  cob_android_resource_server = pkg "sha256-YmN2CRfB7tJq2sFmpjKLS/AgSHx9hm/el/RJoH+mT1c=" "cob_android_resource_server";
  cob_android_script_server = pkg "sha256-Ic5VAqizysXuarOwxJCdeU9A9No66yr0E305dx6CeRc=" "cob_android_script_server";
  cob_android_settings = pkg "sha256-SGR5OPgQL8OgJzFjPYdwPiXeYOYbuSebqXpauyjdYPE=" "cob_android_settings";
}
