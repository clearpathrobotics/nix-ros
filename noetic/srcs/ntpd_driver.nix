{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "vooon";
    repo = "ntpd_driver";
    rev = "b8b9e1d4cc6473a353e469859bf0477c6a8d108e";
    hash = "sha256-EnePQKR9iI6OMSoviGkD2KGMwPJZwuOWA0P5SpZMCuE=";
    name = "vooon-ntpd_driver-b8b9e1d4cc6473a353e469859bf0477c6a8d108e";
  });
in
{
  ntpd_driver = pkg "sha256-EnePQKR9iI6OMSoviGkD2KGMwPJZwuOWA0P5SpZMCuE=" ".";
}
