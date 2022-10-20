{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "mrpt-ros-pkg";
    repo = "mrpt_sensors";
    rev = "54482dc26e4433ef8d93c5eccb53f837e1763e5c";
    hash = "sha256-9DNyEzJKrCsga2idzSxpOoztOb+tr7/hXyakmX+ZBPM=";
    name = "mrpt-ros-pkg-mrpt_sensors-54482dc26e4433ef8d93c5eccb53f837e1763e5c";
  });
in
{
  mrpt_generic_sensor = pkg "sha256-GCFsfG53ZusnfYuP0z9kAR5VVHOqyzUzPlpNPEyaVmo=" "mrpt_generic_sensor";
  mrpt_sensorlib = pkg "sha256-taBBei4JIiiX6HkOF33WOLa3RQlvU47ARMX23Y/1YDY=" "mrpt_sensorlib";
  mrpt_sensors = pkg "sha256-B/qiaCx/y9XbGeqNFgsA/GKIWBCSxq2UAEumYuX67vs=" "mrpt_sensors";
}
