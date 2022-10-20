{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "alvinsunyixiao";
    repo = "vrpn_mocap";
    rev = "29fdcdf3a8fca20da5072af0ad185bbefffb6f97";
    hash = "sha256-xnHB5h6i6UHqMPpW1SFk/VxRUhxZSShtELh1KLZlHfM=";
    name = "alvinsunyixiao-vrpn_mocap-29fdcdf3a8fca20da5072af0ad185bbefffb6f97";
  });
in
{
  vrpn_mocap = pkg "sha256-xnHB5h6i6UHqMPpW1SFk/VxRUhxZSShtELh1KLZlHfM=" ".";
}
