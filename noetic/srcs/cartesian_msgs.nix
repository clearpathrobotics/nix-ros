{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "PickNikRobotics";
    repo = "cartesian_msgs";
    rev = "25c5e00568b8da1793b7cca3e895f43ee23b339b";
    hash = "sha256-SwkbC4Y9k1wakjEJpIkjPmoUkmxYoURJUso9py9Ao/I=";
    name = "PickNikRobotics-cartesian_msgs-25c5e00568b8da1793b7cca3e895f43ee23b339b";
  });
in
{
  cartesian_msgs = pkg "sha256-SwkbC4Y9k1wakjEJpIkjPmoUkmxYoURJUso9py9Ao/I=" ".";
}
