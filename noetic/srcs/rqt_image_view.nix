{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_image_view";
    rev = "ddb8037b88319d92c5d4fcbc89c5f641939847bb";
    hash = "sha256-mN0/ak4+JofkJ+2RJFKWvyLRSB5fRo+t1BEu9Z0MtCM=";
    name = "ros-visualization-rqt_image_view-ddb8037b88319d92c5d4fcbc89c5f641939847bb";
  });
in
{
  rqt_image_view = pkg "sha256-mN0/ak4+JofkJ+2RJFKWvyLRSB5fRo+t1BEu9Z0MtCM=" ".";
}
