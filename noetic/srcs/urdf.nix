{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "urdf";
    rev = "3819ccca3a9d605c44cd40cd9bcfc50415d2e3a1";
    hash = "sha256-w4j9xE5ysn/jtlmqoGF6HvRAiCipdGHo66S/218OP3M=";
    name = "ros-urdf-3819ccca3a9d605c44cd40cd9bcfc50415d2e3a1";
  });
in
{
  urdf = pkg "sha256-Qsf5kM2b+lfOHS3qh77/vVlcuMT5oEjPqesKyICzYgs=" "urdf";
  urdf_parser_plugin = pkg "sha256-DShxAFWFuiNgRTPwyuqtwkAAXIR75aD+kWQX7VUVJWc=" "urdf_parser_plugin";
}
