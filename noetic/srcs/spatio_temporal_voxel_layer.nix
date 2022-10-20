{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "SteveMacenski";
    repo = "spatio_temporal_voxel_layer";
    rev = "fec68cbadf7ce88ac33826a4a32f90af7a12d174";
    hash = "sha256-qsF/hMXSQEVDZT5/vkUi/11dQruckKZisTODMeXj094=";
    name = "SteveMacenski-spatio_temporal_voxel_layer-fec68cbadf7ce88ac33826a4a32f90af7a12d174";
  });
in
{
  spatio_temporal_voxel_layer = pkg "sha256-qsF/hMXSQEVDZT5/vkUi/11dQruckKZisTODMeXj094=" ".";
}
