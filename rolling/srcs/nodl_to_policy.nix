{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "osrf";
    repo = "nodl_to_policy";
    rev = "c7cd05b7ba6caba7ce78a99cfaa6396b42c47248";
    hash = "sha256-xc7pe+MsYn+XLQ+IkVJ04uOccu6/FC1dPSZ6qrxpj+Y=";
    name = "osrf-nodl_to_policy-c7cd05b7ba6caba7ce78a99cfaa6396b42c47248";
  });
in
{
  nodl_to_policy = pkg "sha256-xc7pe+MsYn+XLQ+IkVJ04uOccu6/FC1dPSZ6qrxpj+Y=" ".";
}
