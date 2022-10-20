{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "genlisp";
    rev = "3ac633abacdf5ab321d23ed013c7d5b7da97736d";
    hash = "sha256-ogL4BL7yjVv0+hk4wq9NCfgU7/dB1sJKRNZ0N+kCHR8=";
    name = "ros-genlisp-3ac633abacdf5ab321d23ed013c7d5b7da97736d";
  });
in
{
  genlisp = pkg "sha256-ogL4BL7yjVv0+hk4wq9NCfgU7/dB1sJKRNZ0N+kCHR8=" ".";
}
