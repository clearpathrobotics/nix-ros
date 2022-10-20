{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-controls";
    repo = "urdf_geometry_parser";
    rev = "1d7317a0c5ec7b808e6607a5cd6620f24e402839";
    hash = "sha256-BmZxY0Q85DAm/ZWfwRqN88CJW6uRSHqFmF2ngKIgFqk=";
    name = "ros-controls-urdf_geometry_parser-1d7317a0c5ec7b808e6607a5cd6620f24e402839";
  });
in
{
  urdf_geometry_parser = pkg "sha256-BmZxY0Q85DAm/ZWfwRqN88CJW6uRSHqFmF2ngKIgFqk=" ".";
}
