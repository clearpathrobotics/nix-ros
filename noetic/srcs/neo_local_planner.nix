{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "neobotix";
    repo = "neo_local_planner";
    rev = "18b5396c9cead1f1a0ea4f975e956e493c8c4e62";
    hash = "sha256-1hGswhdykCqEUK+KZZNuecuooB1PVTAbE5Yz5E+AyUw=";
    name = "neobotix-neo_local_planner-18b5396c9cead1f1a0ea4f975e956e493c8c4e62";
  });
in
{
  neo_local_planner = pkg "sha256-1hGswhdykCqEUK+KZZNuecuooB1PVTAbE5Yz5E+AyUw=" ".";
}
