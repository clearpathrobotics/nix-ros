{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "teleop_twist_keyboard";
    rev = "17ef2898f2c9fc7456058065f9e5517d4796536d";
    hash = "sha256-ULSae0/HZsQ+9ZNLjzkA874Up7rSpRx3uRzlYfVrIWc=";
    name = "ros2-teleop_twist_keyboard-17ef2898f2c9fc7456058065f9e5517d4796536d";
  });
in
{
  teleop_twist_keyboard = pkg "sha256-ULSae0/HZsQ+9ZNLjzkA874Up7rSpRx3uRzlYfVrIWc=" ".";
}
