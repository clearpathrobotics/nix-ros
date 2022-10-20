{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "canlab-co";
    repo = "CLPE_G_NVP2650D_SDK";
    rev = "433f32cb6dcb773b6cc4f8dac4cc755ea77411bc";
    hash = "sha256-lYeqbmx4YnEN/ZD3I/ufk2s0MgsloJ3usbGQ7GtSesc=";
    name = "canlab-co-CLPE_G_NVP2650D_SDK-433f32cb6dcb773b6cc4f8dac4cc755ea77411bc";
  });
in
{
  clpe = pkg "sha256-lYeqbmx4YnEN/ZD3I/ufk2s0MgsloJ3usbGQ7GtSesc=" ".";
}
