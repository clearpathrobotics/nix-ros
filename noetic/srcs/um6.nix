{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "um6";
    rev = "3b250b6f8f3e9acfdcece8a9f29592ed0e41f1fb";
    hash = "sha256-zT56YlQd8NZ2440FAJX07ovN9MjZVN+Bje+27xqdmAY=";
    name = "ros-drivers-um6-3b250b6f8f3e9acfdcece8a9f29592ed0e41f1fb";
  });
in
{
  um6 = pkg "sha256-zT56YlQd8NZ2440FAJX07ovN9MjZVN+Bje+27xqdmAY=" ".";
}
