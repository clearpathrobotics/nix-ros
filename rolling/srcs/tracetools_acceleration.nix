{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-acceleration";
    repo = "tracetools_acceleration";
    rev = "c811b9ca370436eaef44c0eb74817725285db6d8";
    hash = "sha256-4ku0xeGOAF0q9zKhjPs8Udi18hloT5sWTa/35/Wcgrs=";
    name = "ros-acceleration-tracetools_acceleration-c811b9ca370436eaef44c0eb74817725285db6d8";
  });
in
{
  tracetools_acceleration = pkg "sha256-4ku0xeGOAF0q9zKhjPs8Udi18hloT5sWTa/35/Wcgrs=" ".";
}
