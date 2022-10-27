{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "Azure";
    repo = "azure-iot-sdk-c";
    rev = "19b7457970d899511f6c43cb618a2b0a8c04bba6";
    hash = "sha256-65EJVLEu3KTco98luFRvgoecVHnDs4PdvyIzqneZqrM=";
    name = "Azure-azure-iot-sdk-c-19b7457970d899511f6c43cb618a2b0a8c04bba6";
  });
in
{
  azure_iot_sdks = pkg "sha256-65EJVLEu3KTco98luFRvgoecVHnDs4PdvyIzqneZqrM=" ".";
}
