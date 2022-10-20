{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "joystick_drivers";
    rev = "2bc2f6a32688e9a9f235e6e46dda443cd09574c2";
    hash = "sha256-olp/xVBahqSfYsSbx9oDcvIZo9TIuToDd8xNO8mvBoE=";
    name = "ros-drivers-joystick_drivers-2bc2f6a32688e9a9f235e6e46dda443cd09574c2";
  });
in
{
  joy = pkg "sha256-Ka+iGzT0MwLWj2DaC9TL/2pA45hwMk8CbG550GrZEBA=" "joy";
  joystick_drivers = pkg "sha256-VyqpWplZtvohk+rK/feVjSEolwdyI3SbFeDGRQCe6WM=" "joystick_drivers";
  spacenav_node = pkg "sha256-yOi02IrhCc33VsQX0QO4nm0HAZnDJoaOTNWIsVezA0k=" "spacenav_node";
}
