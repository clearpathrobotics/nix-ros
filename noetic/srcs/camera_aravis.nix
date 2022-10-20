{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "FraunhoferIOSB";
    repo = "camera_aravis";
    rev = "b3e6b7ae849417f9475a336a53c81cb40fbc5658";
    hash = "sha256-zURBHOVeSkKbYetqIW6NCZChCHoBQPT8FFQuENnerrg=";
    name = "FraunhoferIOSB-camera_aravis-b3e6b7ae849417f9475a336a53c81cb40fbc5658";
  });
in
{
  camera_aravis = pkg "sha256-zURBHOVeSkKbYetqIW6NCZChCHoBQPT8FFQuENnerrg=" ".";
}
