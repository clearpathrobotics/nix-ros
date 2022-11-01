{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ijnek";
    repo = "soccer_visualization";
    rev = "e7d543a3e646d38d1288e7c25021bc126bbb412d";
    hash = "sha256-VqghuVA9fgOOnikaktgfXp90U5KhKbbC56MMnnpYveE=";
    name = "ijnek-soccer_visualization-e7d543a3e646d38d1288e7c25021bc126bbb412d";
  });
in
{
  soccer_marker_generation = pkg "sha256-j3rFXdz5u/W7Cp66bF6y4unx0IjnBPnIlO6J3N1M9yI=" "soccer_marker_generation";
}
