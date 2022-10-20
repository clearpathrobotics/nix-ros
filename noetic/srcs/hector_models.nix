{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "tu-darmstadt-ros-pkg";
    repo = "hector_models";
    rev = "6949f1a4e81474caf4e99a8a9b14e1c7ed61ee29";
    hash = "sha256-JH+jQl54U0hendQRUG6sS4MK313KqZvG5oPVirpEkDk=";
    name = "tu-darmstadt-ros-pkg-hector_models-6949f1a4e81474caf4e99a8a9b14e1c7ed61ee29";
  });
in
{
  hector_components_description = pkg "sha256-7Mzry6clDnBAfN4/iSA71R8JqSpbUGaLX0TQ/+PR5q4=" "hector_components_description";
  hector_models = pkg "sha256-Y29P8PV8gTYk3TMNBFMTcjjQdXpK6rpyxKGQinPBYxQ=" "hector_models";
  hector_sensors_description = pkg "sha256-PJDEqhFwAPFW4NqLGcVcHkz31F4rv8TdgryfHibJ5Dw=" "hector_sensors_description";
  hector_xacro_tools = pkg "sha256-dDTq37HzIe8pUwV1uvbs1R/mCGQA45cUVPkNC7Pyi3o=" "hector_xacro_tools";
}
