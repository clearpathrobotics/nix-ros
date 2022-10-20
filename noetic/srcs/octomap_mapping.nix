{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "OctoMap";
    repo = "octomap_mapping";
    rev = "302a8365618075855e7fb410a3d01e15c4f9efe3";
    hash = "sha256-BBgs8ZAHIHRTCBtxbZOIjHGlZy2x7vsG0pNlxF228do=";
    name = "OctoMap-octomap_mapping-302a8365618075855e7fb410a3d01e15c4f9efe3";
  });
in
{
  octomap_mapping = pkg "sha256-c9N7HXrthUVu655yUURBnC4E17ZoVnvSMI4k5zLSiD0=" "octomap_mapping";
  octomap_server = pkg "sha256-ADHZIBIQuQ29rZJGKpI99bZA0TA4wMXqBk5J/kznhpE=" "octomap_server";
}
