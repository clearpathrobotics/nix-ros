{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "octomap";
    repo = "octomap_msgs";
    rev = "67be62db91510f3a10ac6c37b1013307c290631c";
    hash = "sha256-3ZntjBxa2i1kwKVDS+sVyPEzpOa6o5mAGhxMTL5oi7w=";
    name = "octomap-octomap_msgs-67be62db91510f3a10ac6c37b1013307c290631c";
  });
in
{
  octomap_msgs = pkg "sha256-3ZntjBxa2i1kwKVDS+sVyPEzpOa6o5mAGhxMTL5oi7w=" ".";
}
