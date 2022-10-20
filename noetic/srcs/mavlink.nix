{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "mavlink";
    repo = "mavlink-gbp-release";
    rev = "4fcf481e8ed49d52edab11a7086570787a5bab0f";
    hash = "sha256-8+yg84ShX0NZqMy4Ox7L91ijd0tRXfgov/GkD/g0VRQ=";
    name = "mavlink-mavlink-gbp-release-4fcf481e8ed49d52edab11a7086570787a5bab0f";
  });
in
{
  mavlink = pkg "sha256-8+yg84ShX0NZqMy4Ox7L91ijd0tRXfgov/GkD/g0VRQ=" ".";
}
