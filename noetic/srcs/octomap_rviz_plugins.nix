{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "OctoMap";
    repo = "octomap_rviz_plugins";
    rev = "c766489f62a96a4d37b3fa97d1aa867a0b81cf1c";
    hash = "sha256-Fuz0pfXcyPxtwlviUzkdtuoVYYvDglDd2qlJsll8WBU=";
    name = "OctoMap-octomap_rviz_plugins-c766489f62a96a4d37b3fa97d1aa867a0b81cf1c";
  });
in
{
  octomap_rviz_plugins = pkg "sha256-Fuz0pfXcyPxtwlviUzkdtuoVYYvDglDd2qlJsll8WBU=" ".";
}
