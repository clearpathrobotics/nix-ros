{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-controls";
    repo = "kinematics_interface";
    rev = "01a2cda40eab6b145c8eb5b7f01698427edd9b1b";
    hash = "sha256-cTvGcUWZevKUtWvTVimFy6j93/2u1XfuK1EienvrGp4=";
    name = "ros-controls-kinematics_interface-01a2cda40eab6b145c8eb5b7f01698427edd9b1b";
  });
in
{
  kinematics_interface = pkg "sha256-bbGn4QSsa7ZQTvu/HrQb8efTgVxyT+67xs3NLTCKjZ8=" "kinematics_interface";
  kinematics_interface_kdl = pkg "sha256-OzG20upN2slHzWvNoTetdULvpFPiU+ADielIIKqsjo4=" "kinematics_interface_kdl";
}
