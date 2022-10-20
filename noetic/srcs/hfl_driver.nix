{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "continental";
    repo = "hfl_driver";
    rev = "0cdf666e4e9817b61351d2a5d7badc7b60cd8651";
    hash = "sha256-8dygZmk/hyGSEKHvlXVMM511HxluBHQZz14zSoFNhkE=";
    name = "continental-hfl_driver-0cdf666e4e9817b61351d2a5d7badc7b60cd8651";
  });
in
{
  hfl_driver = pkg "sha256-8dygZmk/hyGSEKHvlXVMM511HxluBHQZz14zSoFNhkE=" ".";
}
