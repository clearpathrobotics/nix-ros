{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "groove-x";
    repo = "mqtt_bridge";
    rev = "e16d97ed0b959c46a4f98ded1eff54cd5d152eaa";
    hash = "sha256-JgD/BBlGR8RP4bgNt2GWASeey0XnI21IGNJ3iO8WPdU=";
    name = "groove-x-mqtt_bridge-e16d97ed0b959c46a4f98ded1eff54cd5d152eaa";
  });
in
{
  mqtt_bridge = pkg "sha256-JgD/BBlGR8RP4bgNt2GWASeey0XnI21IGNJ3iO8WPdU=" ".";
}
