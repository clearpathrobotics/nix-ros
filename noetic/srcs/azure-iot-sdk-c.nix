{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "Azure";
    repo = "azure-iot-sdk-c";
    rev = "460282257d1a9410c396ddccd858e4d8e0323165";
    hash = "sha256-ovlLsESvs+1isM+yj2LVWuUe73NX/S9nBLko0oCt21Q=";
    name = "Azure-azure-iot-sdk-c-460282257d1a9410c396ddccd858e4d8e0323165";
  });
in
{
  azure_iot_sdks = pkg "sha256-ovlLsESvs+1isM+yj2LVWuUe73NX/S9nBLko0oCt21Q=" ".";
}
