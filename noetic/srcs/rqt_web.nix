{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_web";
    rev = "f5cc983723915a9027ae50c4587c0208d0bd7630";
    hash = "sha256-j2qI+jojXSryAtrBgDjXtUYfvYN0lSBU186cCuQJ6Zo=";
    name = "ros-visualization-rqt_web-f5cc983723915a9027ae50c4587c0208d0bd7630";
  });
in
{
  rqt_web = pkg "sha256-j2qI+jojXSryAtrBgDjXtUYfvYN0lSBU186cCuQJ6Zo=" ".";
}
