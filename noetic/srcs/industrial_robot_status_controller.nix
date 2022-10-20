{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "gavanderhoorn";
    repo = "industrial_robot_status_controller";
    rev = "2831e52e2eaea794f24c5261d18d74a15734511b";
    hash = "sha256-4O6UkSkOlENYVOA6Pl65nBFzJleFeZYx5gyAZD4RYD4=";
    name = "gavanderhoorn-industrial_robot_status_controller-2831e52e2eaea794f24c5261d18d74a15734511b";
  });
in
{
  industrial_robot_status_controller = pkg "sha256-p022V+EEm9prUjYhRXN1E0niuxHHS6W0+aHw3/5q+Dg=" "industrial_robot_status_controller";
  industrial_robot_status_interface = pkg "sha256-J1PiBH1lTC2sKh1Dc3IxXux9JyByOJNeXzxjdVkbU5c=" "industrial_robot_status_interface";
}
