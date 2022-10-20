{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rcl";
    rev = "edd65bfc5fca267c8ec842e8e66c404e5bcb0138";
    hash = "sha256-Myez2CsNb9pepYhePd4q0CbLMs6ClHqfjW6uuTJTtss=";
    name = "ros2-rcl-edd65bfc5fca267c8ec842e8e66c404e5bcb0138";
  });
in
{
  rcl = pkg "sha256-davMTpejbfJLkBCh0re2DVDHK2EnVgMvct+MA0UD9S0=" "rcl";
  rcl_action = pkg "sha256-FhABu99nFzPu4safaRYwzNBRNWyf55Kwi0xWrE1/ZDE=" "rcl_action";
  rcl_lifecycle = pkg "sha256-6RoSc9W/EzNEMI6LQm5pDhjvUJzh4l+9/nK/hyDV6eg=" "rcl_lifecycle";
  rcl_yaml_param_parser = pkg "sha256-9iWgU+IgiRICgrI5pEN52EYwqA411VFNRKJGXAUFmOI=" "rcl_yaml_param_parser";
}
