{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "canlab-co";
    repo = "clpe_ros";
    rev = "b430eef93f00b27562a95e93e0f806d1c03692ea";
    hash = "sha256-cY1Z0D9WVOsePJQ2qUB0VZUZJ/lCyGocFUJmRhEMevw=";
    name = "canlab-co-clpe_ros-b430eef93f00b27562a95e93e0f806d1c03692ea";
  });
in
{
  clpe_ros = pkg "sha256-cY1Z0D9WVOsePJQ2qUB0VZUZJ/lCyGocFUJmRhEMevw=" ".";
}
