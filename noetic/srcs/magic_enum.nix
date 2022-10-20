{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "Neargye";
    repo = "magic_enum";
    rev = "159a35006d8e18172eb687b432b77e6f5baa61f6";
    hash = "sha256-z5K6jRaFbasIrsjyZGpn4Ye7bxHOY0DvYiV9HzgrQlc=";
    name = "Neargye-magic_enum-159a35006d8e18172eb687b432b77e6f5baa61f6";
  });
in
{
  magic_enum = pkg "sha256-z5K6jRaFbasIrsjyZGpn4Ye7bxHOY0DvYiV9HzgrQlc=" ".";
}
