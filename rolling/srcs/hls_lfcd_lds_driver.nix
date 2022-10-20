{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ROBOTIS-GIT";
    repo = "hls_lfcd_lds_driver";
    rev = "b98753f854918b19eb3b7e2c7286cbe755cf1967";
    hash = "sha256-SsBwNzipEMm74cuuaeeB7fp8/BX9zN1a+lcSvt+6LUE=";
    name = "ROBOTIS-GIT-hls_lfcd_lds_driver-b98753f854918b19eb3b7e2c7286cbe755cf1967";
  });
in
{
  hls_lfcd_lds_driver = pkg "sha256-SsBwNzipEMm74cuuaeeB7fp8/BX9zN1a+lcSvt+6LUE=" ".";
}
