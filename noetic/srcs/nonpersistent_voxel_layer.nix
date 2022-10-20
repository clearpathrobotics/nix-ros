{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "SteveMacenski";
    repo = "nonpersistent_voxel_layer";
    rev = "068815309d3321614afacd6ab9e018f0f2f187f8";
    hash = "sha256-FSJKE5MWw/O7p2Fk8fohCmlQuUXFUb4RazGZQ6R1Rj4=";
    name = "SteveMacenski-nonpersistent_voxel_layer-068815309d3321614afacd6ab9e018f0f2f187f8";
  });
in
{
  nonpersistent_voxel_layer = pkg "sha256-FSJKE5MWw/O7p2Fk8fohCmlQuUXFUb4RazGZQ6R1Rj4=" ".";
}
