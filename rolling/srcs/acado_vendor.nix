{ pkgSrc, fetchFromGitLab }:
let
  pkg = pkgSrc (fetchFromGitLab {
    owner = "autowarefoundation/autoware.auto";
    repo = "acado_vendor";
    rev = "6daf1cd09e939222773310870d01d8a3c85c7362";
    hash = "sha256-49XLXvNlX5KiUP3z5NkQqi7wtWXJhWdAbhiDJiqbs2I=";
    name = "autowarefoundation-autoware.auto-acado_vendor-6daf1cd09e939222773310870d01d8a3c85c7362";
  });
in
{
  acado_vendor = pkg "sha256-49XLXvNlX5KiUP3z5NkQqi7wtWXJhWdAbhiDJiqbs2I=" ".";
}
