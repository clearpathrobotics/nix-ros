{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "DLu";
    repo = "laser_filtering";
    rev = "ef296671d4ecf75383813b470b975aae4e9ee84a";
    hash = "sha256-obY0WETBCac+Z0zhc5Y+IfECeGIv7krQ453LHPuYS3k=";
    name = "DLu-laser_filtering-ef296671d4ecf75383813b470b975aae4e9ee84a";
  });
in
{
  laser_filtering = pkg "sha256-srvGlOmSVgnSQxbo6lyReX9JSj3RAvNBRZuWtEIxZ9w=" "laser_filtering";
  map_laser = pkg "sha256-0QY1xNgy/QF2t/q05OFhXNeajn3TY/DyNN9axd6S+nI=" "map_laser";
}
