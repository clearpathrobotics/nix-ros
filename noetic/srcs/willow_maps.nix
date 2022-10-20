{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "pr2";
    repo = "willow_maps";
    rev = "f35901e9351269673a91540f61ec8d49d3a7e200";
    hash = "sha256-IIn8UQEUNVNd+OCgqtSbqflAXMrQItZZjwiSGzuJKd4=";
    name = "pr2-willow_maps-f35901e9351269673a91540f61ec8d49d3a7e200";
  });
in
{
  willow_maps = pkg "sha256-IIn8UQEUNVNd+OCgqtSbqflAXMrQItZZjwiSGzuJKd4=" ".";
}
