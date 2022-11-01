{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "suurjaak";
    repo = "grepros";
    rev = "022a1541ebcaf5ef1007d47e653c0c57cadd127d";
    hash = "sha256-xNIkYkH5iGMMZWXABQF8VH5UPVyLZIyYW7MsG1MZG4E=";
    name = "suurjaak-grepros-022a1541ebcaf5ef1007d47e653c0c57cadd127d";
  });
in
{
  grepros = pkg "sha256-xNIkYkH5iGMMZWXABQF8VH5UPVyLZIyYW7MsG1MZG4E=" ".";
}
