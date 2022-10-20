{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "hrnr";
    repo = "m-explore";
    rev = "712bdd41027b645c9c876a4c0071478f090825ea";
    hash = "sha256-HLE7FCXU9DAxEYPTTk1GL9P66ikwJ86Vnp0TRiC5zBE=";
    name = "hrnr-m-explore-712bdd41027b645c9c876a4c0071478f090825ea";
  });
in
{
  explore_lite = pkg "sha256-G6WSRw39XxIsShtpEh9Bvu52YIuixuqNW4MFvpc+xAY=" "explore";
  multirobot_map_merge = pkg "sha256-y2/4j5S1DXEjv860XEhaPFk5KNqljNLeCYxbgkgL2XA=" "map_merge";
}
