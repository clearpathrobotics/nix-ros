{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "cartographer";
    rev = "2ce33a65bd4e41e3bf5af92c9275354ce7921c70";
    hash = "sha256-VdYSBdGfvE/W/yRKbY6nuvE+qyKmspVuIf6rmiWvmc8=";
    name = "ros2-cartographer-2ce33a65bd4e41e3bf5af92c9275354ce7921c70";
  });
in
{
  cartographer = pkg "sha256-VdYSBdGfvE/W/yRKbY6nuvE+qyKmspVuIf6rmiWvmc8=" ".";
}
