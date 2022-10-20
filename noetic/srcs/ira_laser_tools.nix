{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "iralabdisco";
    repo = "ira_laser_tools";
    rev = "958d0ac8e103822ce9ce04c0bb9c3b499322575d";
    hash = "sha256-HeTMaDQb/7CJu9y5+YVqtTAtlIDBa/ihV4IsePkc0yQ=";
    name = "iralabdisco-ira_laser_tools-958d0ac8e103822ce9ce04c0bb9c3b499322575d";
  });
in
{
  ira_laser_tools = pkg "sha256-HeTMaDQb/7CJu9y5+YVqtTAtlIDBa/ihV4IsePkc0yQ=" ".";
}
