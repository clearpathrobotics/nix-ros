{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "mimick_vendor";
    rev = "76e51eedab0359ed56dc1099ed763db97f4275b7";
    hash = "sha256-pXDH9PXGCN1qy5ANpLj7G0dJh8pwQhIVmqLc1ceayZ4=";
    name = "ros2-mimick_vendor-76e51eedab0359ed56dc1099ed763db97f4275b7";
  });
in
{
  mimick_vendor = pkg "sha256-pXDH9PXGCN1qy5ANpLj7G0dJh8pwQhIVmqLc1ceayZ4=" ".";
}
