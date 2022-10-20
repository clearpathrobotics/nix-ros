{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "continental";
    repo = "udp_com";
    rev = "fe08f440726e5853391fcd90524336edb5dc34d9";
    hash = "sha256-7jXhEeOn4J5tpDWZfGyhx5B/qV4iGfYnsAkFawntll8=";
    name = "continental-udp_com-fe08f440726e5853391fcd90524336edb5dc34d9";
  });
in
{
  udp_com = pkg "sha256-7jXhEeOn4J5tpDWZfGyhx5B/qV4iGfYnsAkFawntll8=" ".";
}
