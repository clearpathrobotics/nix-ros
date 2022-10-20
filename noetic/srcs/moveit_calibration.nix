{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-planning";
    repo = "moveit_calibration";
    rev = "ff6918e380791d82ff859b251297ac36bf1e1b2b";
    hash = "sha256-FoSdsGNvxLStSk1y5UxXigR5FVpuwMNq4oSKS8sAnoY=";
    name = "ros-planning-moveit_calibration-ff6918e380791d82ff859b251297ac36bf1e1b2b";
  });
in
{
  moveit_calibration_gui = pkg "sha256-Gq3qkbJBZgFsDvnql2pfdZWouuE6zeEiBRAjlgYfAXo=" "moveit_calibration_gui";
  moveit_calibration_plugins = pkg "sha256-8heIuhgRKDt5BWZ/+hd4GJV8NGre5YEz9bH0ePIffpU=" "moveit_calibration_plugins";
}
