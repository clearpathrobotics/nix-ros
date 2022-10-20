{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "odva_ethernetip";
    rev = "faba8066e96a8d58e4cf4832660bc509ef923609";
    hash = "sha256-RiWFqkr6l+yaz79Fd3/9UULIMfvHluDerWACZwVU3vA=";
    name = "ros-drivers-odva_ethernetip-faba8066e96a8d58e4cf4832660bc509ef923609";
  });
in
{
  odva_ethernetip = pkg "sha256-RiWFqkr6l+yaz79Fd3/9UULIMfvHluDerWACZwVU3vA=" ".";
}
