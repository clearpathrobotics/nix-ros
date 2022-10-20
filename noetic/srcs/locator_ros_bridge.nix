{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "boschglobal";
    repo = "locator_ros_bridge";
    rev = "9f4ffd79401402f93309256205add7ce5ffcbbe4";
    hash = "sha256-iYaCUzPeiJuideNPXnpZxTl25O2+LtI1qTIlGhfMSiw=";
    name = "boschglobal-locator_ros_bridge-9f4ffd79401402f93309256205add7ce5ffcbbe4";
  });
in
{
  bosch_locator_bridge = pkg "sha256-02qLyFIbxNy4T0GJCYrc5MmyvT6Tn2G4Jetf5TOXt80=" "bosch_locator_bridge";
}
