{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "example_interfaces";
    rev = "4415bc52b67fdd7373981129033032d7a2b9f97c";
    hash = "sha256-31O3ZWxNv34N/J/ek2UYKuDiAsoY48eg3S06x7nBM2k=";
    name = "ros2-example_interfaces-4415bc52b67fdd7373981129033032d7a2b9f97c";
  });
in
{
  example_interfaces = pkg "sha256-31O3ZWxNv34N/J/ek2UYKuDiAsoY48eg3S06x7nBM2k=" ".";
}
