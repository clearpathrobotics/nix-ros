{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "swri-robotics";
    repo = "swri_console";
    rev = "cc6e348fd9896cfc5b850606286e0731da207196";
    hash = "sha256-6Vk6YC2YPbSHMOn0UshWoitmPNJALe/YyMv6VN2SDqM=";
    name = "swri-robotics-swri_console-cc6e348fd9896cfc5b850606286e0731da207196";
  });
in
{
  swri_console = pkg "sha256-6Vk6YC2YPbSHMOn0UshWoitmPNJALe/YyMv6VN2SDqM=" ".";
}
