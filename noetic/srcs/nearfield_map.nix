{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "TUC-ProAut";
    repo = "ros_nearfield_map";
    rev = "9d4f7ec33f92baf1c57572a0891e24b8dfefdd42";
    hash = "sha256-qFNkSDrhWxgb8xiz2jAEFuXrXCptRZDKqjPM72JE08o=";
    name = "TUC-ProAut-ros_nearfield_map-9d4f7ec33f92baf1c57572a0891e24b8dfefdd42";
  });
in
{
  nearfield_map = pkg "sha256-qFNkSDrhWxgb8xiz2jAEFuXrXCptRZDKqjPM72JE08o=" ".";
}
