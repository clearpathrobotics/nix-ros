{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros4hri";
    repo = "hri_rviz";
    rev = "9e4c5df4c4fe15401f375194a4fc7c2ca80a2304";
    hash = "sha256-sdNUU5bhcs8p9XS0J8bGOvf1Svel5dKzPbsCsJgsVpE=";
    name = "ros4hri-hri_rviz-9e4c5df4c4fe15401f375194a4fc7c2ca80a2304";
  });
in
{
  hri_rviz = pkg "sha256-sdNUU5bhcs8p9XS0J8bGOvf1Svel5dKzPbsCsJgsVpE=" ".";
}
