{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "lagadic";
    repo = "visp";
    rev = "263d5b26db6908edb38f6792aff9be77382f3a81";
    hash = "sha256-SQ93TTjF20Zeghx3Lkml/zdjzLqj057AdOUFMR5h+fw=";
    name = "lagadic-visp-263d5b26db6908edb38f6792aff9be77382f3a81";
  });
in
{
  VISP = pkg "sha256-SQ93TTjF20Zeghx3Lkml/zdjzLqj057AdOUFMR5h+fw=" ".";
}
