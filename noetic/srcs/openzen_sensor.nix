{ pkgSrc, fetchFromBitbucket }:
let
  pkg = pkgSrc (fetchFromBitbucket {
    owner = "lpresearch";
    repo = "openzenros";
    rev = "f5d7ec5cc84d00c6a0a724913c7c05997d9e3de9";
    hash = "sha256-k1/CAFp9BVwlOCT9Jsp6R5CA0yEOk274egIc9Loe894=";
    name = "lpresearch-openzenros-f5d7ec5cc84d00c6a0a724913c7c05997d9e3de9";
  });
in
{
  openzen_sensor = pkg "sha256-k1/CAFp9BVwlOCT9Jsp6R5CA0yEOk274egIc9Loe894=" ".";
}
