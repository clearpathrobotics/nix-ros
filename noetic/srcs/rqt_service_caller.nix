{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_service_caller";
    rev = "d47fdee3a152ceb1be6e2e3eb369431ce431443f";
    hash = "sha256-hVR2qSpIxN/uQxteI8s732r1j24WtGIYG7T8UkeJ8gI=";
    name = "ros-visualization-rqt_service_caller-d47fdee3a152ceb1be6e2e3eb369431ce431443f";
  });
in
{
  rqt_service_caller = pkg "sha256-hVR2qSpIxN/uQxteI8s732r1j24WtGIYG7T8UkeJ8gI=" ".";
}
