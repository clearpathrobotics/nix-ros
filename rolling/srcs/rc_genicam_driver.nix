{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "roboception";
    repo = "rc_genicam_driver_ros2";
    rev = "5a7ee9653e512c81f3b336bd51d2fb17277587ec";
    hash = "sha256-L/Ttve02+zJ1WDe8z7GGwg8SA2NQpy4j9LhTxqDY77c=";
    name = "roboception-rc_genicam_driver_ros2-5a7ee9653e512c81f3b336bd51d2fb17277587ec";
  });
in
{
  rc_genicam_driver = pkg "sha256-L/Ttve02+zJ1WDe8z7GGwg8SA2NQpy4j9LhTxqDY77c=" ".";
}
