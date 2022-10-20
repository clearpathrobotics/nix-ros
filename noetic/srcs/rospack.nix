{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "rospack";
    rev = "ad85a874575bbed74124b722b42b545537cc6aa3";
    hash = "sha256-wX1E8btGiwQiTqWI582Khri+ZAdpjtpcR0mNqXC4UiA=";
    name = "ros-rospack-ad85a874575bbed74124b722b42b545537cc6aa3";
  });
in
{
  rospack = pkg "sha256-wX1E8btGiwQiTqWI582Khri+ZAdpjtpcR0mNqXC4UiA=" ".";
}
