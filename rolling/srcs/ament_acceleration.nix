{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-acceleration";
    repo = "ament_acceleration";
    rev = "f1568b1a0edc8055c04ca230c523d7f01b653cdc";
    hash = "sha256-tnkilfsTlrhC8xcFlu9E8VIt8hGsNKCcdD53KV8JRac=";
    name = "ros-acceleration-ament_acceleration-f1568b1a0edc8055c04ca230c523d7f01b653cdc";
  });
in
{
  ament_acceleration = pkg "sha256-tnkilfsTlrhC8xcFlu9E8VIt8hGsNKCcdD53KV8JRac=" ".";
}
