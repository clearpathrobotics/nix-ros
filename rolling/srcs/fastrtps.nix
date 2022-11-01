{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "eProsima";
    repo = "Fast-DDS";
    rev = "0eb12c15a80be4d0bf923fdf2a98ae17410b305c";
    hash = "sha256-vsHneUcFdAqSTyLVIjR0IboiTzywOGHb4xCeABEJO+0=";
    name = "eProsima-Fast-DDS-0eb12c15a80be4d0bf923fdf2a98ae17410b305c";
  });
in
{
  fastrtps = pkg "sha256-vsHneUcFdAqSTyLVIjR0IboiTzywOGHb4xCeABEJO+0=" ".";
}
