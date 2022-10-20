{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rmw_dds_common";
    rev = "e895361ce6bf6894d1473cd87955f125f1714476";
    hash = "sha256-NWJHXyGeg8rp5V1FzwDp7QBS5H0t+JP2PctRgpKX2PI=";
    name = "ros2-rmw_dds_common-e895361ce6bf6894d1473cd87955f125f1714476";
  });
in
{
  rmw_dds_common = pkg "sha256-oLNl+r1xe16XEwUqRU2JgCbasANUL1IAAXRYHwssLAY=" "rmw_dds_common";
}
