{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "class_loader";
    rev = "c427a50f0e304d61a8264252547909c0136dae61";
    hash = "sha256-ggad901FqQbn4bRq4LMnnLkm0gxx/8+cZZb+uUHMnZE=";
    name = "ros-class_loader-c427a50f0e304d61a8264252547909c0136dae61";
  });
in
{
  class_loader = pkg "sha256-ggad901FqQbn4bRq4LMnnLkm0gxx/8+cZZb+uUHMnZE=" ".";
}
