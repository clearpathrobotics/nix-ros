{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "roslint";
    rev = "be2160f57f503c9dbad611c1526d6a53e879262b";
    hash = "sha256-JH77j809BBTnhXvMV7JU1eyN/7PYPhSnazcGniwUUdQ=";
    name = "ros-roslint-be2160f57f503c9dbad611c1526d6a53e879262b";
  });
in
{
  roslint = pkg "sha256-JH77j809BBTnhXvMV7JU1eyN/7PYPhSnazcGniwUUdQ=" ".";
}
