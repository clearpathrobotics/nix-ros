{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_reconfigure";
    rev = "43a0961f88a225f55c429400e624242741704310";
    hash = "sha256-OG4md15KMY3eXpSjQMrcpFLDDAD0Q4yiLrAVXe5pRL0=";
    name = "ros-visualization-rqt_reconfigure-43a0961f88a225f55c429400e624242741704310";
  });
in
{
  rqt_reconfigure = pkg "sha256-OG4md15KMY3eXpSjQMrcpFLDDAD0Q4yiLrAVXe5pRL0=" ".";
}
