{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "aussierobots";
    repo = "ublox_dgnss";
    rev = "2a0eca3eea209c464a40efbe7b5bdaa277669465";
    hash = "sha256-Rkb4EmIsqKiAcgb+39cLhJwt45SWqaM6fhKAjC8+dks=";
    name = "aussierobots-ublox_dgnss-2a0eca3eea209c464a40efbe7b5bdaa277669465";
  });
in
{
  ublox_dgnss = pkg "sha256-J3Q7I3WLW0elfgK+8If2tGBuxll769RKvn278cNuhpI=" "ublox_dgnss";
  ublox_dgnss_node = pkg "sha256-dgX6n6jvaBL2uHtDfImzoDMIddLnQMleaf0VMdCrpTk=" "ublox_dgnss_node";
  ublox_ubx_interfaces = pkg "sha256-LVY7sODWICiAO2EZPOmt5aTlu0ZqjHH4bIgAZfFKbpQ=" "ublox_ubx_interfaces";
  ublox_ubx_msgs = pkg "sha256-rPeG/k/7UAr25C9ghUPya7+ZwS9svz66lkGJCDlEi6w=" "ublox_ubx_msgs";
}
