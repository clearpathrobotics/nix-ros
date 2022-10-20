{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "fetchrobotics";
    repo = "power_msgs";
    rev = "97f29d8ba44d9f60922903a9c03d3c95a661e694";
    hash = "sha256-QvZ5QmO3r+aHuScvApVtJBeMy9z8HwfEc0jhtBR40PY=";
    name = "fetchrobotics-power_msgs-97f29d8ba44d9f60922903a9c03d3c95a661e694";
  });
in
{
  power_msgs = pkg "sha256-QvZ5QmO3r+aHuScvApVtJBeMy9z8HwfEc0jhtBR40PY=" ".";
}
