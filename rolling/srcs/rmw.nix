{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rmw";
    rev = "6ad4fcbb7ee67dc18ec73385bf3839c14ff61567";
    hash = "sha256-slSro3Fdw1jyRMZAQCFOQ5Lv5sNI136SltBDjOUeDF0=";
    name = "ros2-rmw-6ad4fcbb7ee67dc18ec73385bf3839c14ff61567";
  });
in
{
  rmw = pkg "sha256-oKwX53++Bt8esG5hwgXlVBgyWPCni9yTEl0cL+aVj5A=" "rmw";
  rmw_implementation_cmake = pkg "sha256-4+wL6K9GCBv1Fxb0aTqLz4oIVBsmJmRuInjMFcjpSPQ=" "rmw_implementation_cmake";
}
