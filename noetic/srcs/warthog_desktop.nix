{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "warthog-cpr";
    repo = "warthog_desktop";
    rev = "be6b1599ef34f8cbac50a909b08e7c41f07b3bbc";
    hash = "sha256-kD367QSkPLv4GQHxSPFltZZurfHkfH+yFPkUOHwckGk=";
    name = "warthog-cpr-warthog_desktop-be6b1599ef34f8cbac50a909b08e7c41f07b3bbc";
  });
in
{
  warthog_desktop = pkg "sha256-g3l08DSJrKU5vbRiEi5SGjnqc1qqzXON3FnhQjNE5eA=" "warthog_desktop";
  warthog_viz = pkg "sha256-z3DMbF6w5Ty9Ofbz+VGHnmpaF/3hGE0MKJ4NICuaYVg=" "warthog_viz";
}
