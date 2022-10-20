{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "PickNikRobotics";
    repo = "RSL";
    rev = "5e1e0b79d745c3c53074ff9bbde84aa05837e78d";
    hash = "sha256-GymG62rP6pwemr9YzExA5Vg8nFAJ2cjDwZZUsqQpNZ8=";
    name = "PickNikRobotics-RSL-5e1e0b79d745c3c53074ff9bbde84aa05837e78d";
  });
in
{
  rsl = pkg "sha256-GymG62rP6pwemr9YzExA5Vg8nFAJ2cjDwZZUsqQpNZ8=" ".";
}
