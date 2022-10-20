{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ctu-vras";
    repo = "snmp_ros";
    rev = "ba487290b329e5aad59870b2d9907dd190fbcee6";
    hash = "sha256-Be/kFNlC7IRwM+WslWI79vJib3f5iIpcm9BC9NMfrqQ=";
    name = "ctu-vras-snmp_ros-ba487290b329e5aad59870b2d9907dd190fbcee6";
  });
in
{
  snmp_ros = pkg "sha256-Be/kFNlC7IRwM+WslWI79vJib3f5iIpcm9BC9NMfrqQ=" ".";
}
