{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "open_karto";
    rev = "3ef9f6baae5e277263068705ca0e1e406424da19";
    hash = "sha256-38AjvUzjCqmoGXKhzqRgHBlrW1xNT4vroy2nFpoBVNE=";
    name = "ros-perception-open_karto-3ef9f6baae5e277263068705ca0e1e406424da19";
  });
in
{
  open_karto = pkg "sha256-38AjvUzjCqmoGXKhzqRgHBlrW1xNT4vroy2nFpoBVNE=" ".";
}
