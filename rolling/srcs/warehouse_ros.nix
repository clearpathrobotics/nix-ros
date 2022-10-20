{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-planning";
    repo = "warehouse_ros";
    rev = "57e957f830ccb25a3a7c0639736266187c511ad0";
    hash = "sha256-Hx8waSQsrNKtt/NHF20+2WgnPsUp40Xt30c1UoM91iY=";
    name = "ros-planning-warehouse_ros-57e957f830ccb25a3a7c0639736266187c511ad0";
  });
in
{
  warehouse_ros = pkg "sha256-Hx8waSQsrNKtt/NHF20+2WgnPsUp40Xt30c1UoM91iY=" ".";
}
