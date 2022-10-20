{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "OctoMap";
    repo = "octomap_rviz_plugins";
    rev = "1891a49cc1a6cbcd36ac082571d91798a9cc8c65";
    hash = "sha256-ypJbvTjoGFugwI38rdf2XD3GO33nNukYHvxGjNU3nXk=";
    name = "OctoMap-octomap_rviz_plugins-1891a49cc1a6cbcd36ac082571d91798a9cc8c65";
  });
in
{
  octomap_rviz_plugins = pkg "sha256-ypJbvTjoGFugwI38rdf2XD3GO33nNukYHvxGjNU3nXk=" ".";
}
