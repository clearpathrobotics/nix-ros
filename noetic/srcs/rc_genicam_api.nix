{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "roboception";
    repo = "rc_genicam_api";
    rev = "bd1d83262df9e0eed8b8b62c9571c1bf1a8e43a6";
    hash = "sha256-lxnKckzVlbg9jKanW2Tv2X8guyngSG0lJHVtljMIYR4=";
    name = "roboception-rc_genicam_api-bd1d83262df9e0eed8b8b62c9571c1bf1a8e43a6";
  });
in
{
  rc_genicam_api = pkg "sha256-lxnKckzVlbg9jKanW2Tv2X8guyngSG0lJHVtljMIYR4=" ".";
}
