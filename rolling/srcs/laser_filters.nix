{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "laser_filters";
    rev = "25eda91a881c0fa69a679a78bdc061f200a19e4d";
    hash = "sha256-6lrzUHi8OGDyA0azXHjwNPVWrSBG4PH9DlxLrZzWBqY=";
    name = "ros-perception-laser_filters-25eda91a881c0fa69a679a78bdc061f200a19e4d";
  });
in
{
  laser_filters = pkg "sha256-6lrzUHi8OGDyA0azXHjwNPVWrSBG4PH9DlxLrZzWBqY=" ".";
}
