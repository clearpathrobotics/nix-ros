{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "open-rmf";
    repo = "nlohmann_json_schema_validator_vendor";
    rev = "b3bbc750372cf520a3724c300ea54f11cdc1af01";
    hash = "sha256-1CIiy79HnzGEjRZd9B+ml3DF8vSFHvznbrqhJ3ium3Q=";
    name = "open-rmf-nlohmann_json_schema_validator_vendor-b3bbc750372cf520a3724c300ea54f11cdc1af01";
  });
in
{
  nlohmann_json_schema_validator_vendor = pkg "sha256-1CIiy79HnzGEjRZd9B+ml3DF8vSFHvznbrqhJ3ium3Q=" ".";
}
