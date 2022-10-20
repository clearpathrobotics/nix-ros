{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "urdf_parser_py";
    rev = "3bcb9051e3bc6ebb8bff0bf8dd2c2281522b05d9";
    hash = "sha256-ik8UiIgqjugP8tZ8P4/LidydcbuxWKIVYBaxYGo8+aU=";
    name = "ros-urdf_parser_py-3bcb9051e3bc6ebb8bff0bf8dd2c2281522b05d9";
  });
in
{
  urdfdom_py = pkg "sha256-ik8UiIgqjugP8tZ8P4/LidydcbuxWKIVYBaxYGo8+aU=" ".";
}
