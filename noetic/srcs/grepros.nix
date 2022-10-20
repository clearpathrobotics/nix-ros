{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "suurjaak";
    repo = "grepros";
    rev = "e73d7fe7d23acde57f073081d77f532933671b31";
    hash = "sha256-kkgdxzAM63RqHKntYQDrD++eteFk5qlYabZQp3hNujA=";
    name = "suurjaak-grepros-e73d7fe7d23acde57f073081d77f532933671b31";
  });
in
{
  grepros = pkg "sha256-kkgdxzAM63RqHKntYQDrD++eteFk5qlYabZQp3hNujA=" ".";
}
