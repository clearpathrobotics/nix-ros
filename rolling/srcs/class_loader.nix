{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "class_loader";
    rev = "c6399c8f03e78129c3d93e7e0dea27f90ad622ef";
    hash = "sha256-2WDEJpYXJ9Wat71mfpd16IcZWTeTVbx1iafjHvZIDsg=";
    name = "ros-class_loader-c6399c8f03e78129c3d93e7e0dea27f90ad622ef";
  });
in
{
  class_loader = pkg "sha256-2WDEJpYXJ9Wat71mfpd16IcZWTeTVbx1iafjHvZIDsg=" ".";
}
