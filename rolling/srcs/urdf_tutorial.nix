{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "urdf_tutorial";
    rev = "d19800467bd64aecce668fc293fda654a5b898d5";
    hash = "sha256-6H/rsqQDffPFC1sUg6ulIexDmvQCihFQjxvPn38++9k=";
    name = "ros-urdf_tutorial-d19800467bd64aecce668fc293fda654a5b898d5";
  });
in
{
  urdf_tutorial = pkg "sha256-6H/rsqQDffPFC1sUg6ulIexDmvQCihFQjxvPn38++9k=" ".";
}
