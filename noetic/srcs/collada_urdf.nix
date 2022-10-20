{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "collada_urdf";
    rev = "461d6016d11966e8cca27511712f5fdafa263e93";
    hash = "sha256-7g6r+wIE1ZEI5VdT8VK9qMqbpdP6d6jfO1wQ31aE+Wo=";
    name = "ros-collada_urdf-461d6016d11966e8cca27511712f5fdafa263e93";
  });
in
{
  collada_parser = pkg "sha256-7NP/MTNf2aRw5QAwXjBXPaJHgmeNi8hjqUBoHt6xK2w=" "collada_parser";
  collada_urdf = pkg "sha256-wCc+mgNvgIJrdphObUrPAAyUhSO2eGhpUNVD0vT9DdU=" "collada_urdf";
}
