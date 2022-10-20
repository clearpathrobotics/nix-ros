{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "tinyxml2_vendor";
    rev = "5f9a3e48c665c15410209610f0db903c78a562e5";
    hash = "sha256-D4sWbtJ5JKO7VrXqmzfX22/gfo0cPuEh4JgOyv2TtVQ=";
    name = "ros2-tinyxml2_vendor-5f9a3e48c665c15410209610f0db903c78a562e5";
  });
in
{
  tinyxml2_vendor = pkg "sha256-D4sWbtJ5JKO7VrXqmzfX22/gfo0cPuEh4JgOyv2TtVQ=" ".";
}
