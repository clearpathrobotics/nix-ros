{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "PlotJuggler";
    repo = "plotjuggler-ros-plugins";
    rev = "e72800145dd748418732ea62ea5cd7f9ca5d1c17";
    hash = "sha256-H1mXi8IzW6LA3xqg1jkIvyVVEsAdH1Cda8NERZdo16c=";
    name = "PlotJuggler-plotjuggler-ros-plugins-e72800145dd748418732ea62ea5cd7f9ca5d1c17";
  });
in
{
  plotjuggler_ros = pkg "sha256-H1mXi8IzW6LA3xqg1jkIvyVVEsAdH1Cda8NERZdo16c=" ".";
}
