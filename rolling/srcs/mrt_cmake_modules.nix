{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "KIT-MRT";
    repo = "mrt_cmake_modules";
    rev = "643d2193af10e562b221d3e40e169c4dc9c2a721";
    hash = "sha256-ljZeBIQK4PS/MFd2OWELOjh4+4CREbw191glart1DXQ=";
    name = "KIT-MRT-mrt_cmake_modules-643d2193af10e562b221d3e40e169c4dc9c2a721";
  });
in
{
  mrt_cmake_modules = pkg "sha256-ljZeBIQK4PS/MFd2OWELOjh4+4CREbw191glart1DXQ=" ".";
}
