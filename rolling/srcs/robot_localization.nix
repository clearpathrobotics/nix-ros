{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "cra-ros-pkg";
    repo = "robot_localization";
    rev = "35e57fbf570485b585ec1cb626f5441aca7db606";
    hash = "sha256-y8GsyFWE2ivxnCn9SfFZU3Er2KeRz4kfQUhWOcZuRZQ=";
    name = "cra-ros-pkg-robot_localization-35e57fbf570485b585ec1cb626f5441aca7db606";
  });
in
{
  robot_localization = pkg "sha256-y8GsyFWE2ivxnCn9SfFZU3Er2KeRz4kfQUhWOcZuRZQ=" ".";
}
