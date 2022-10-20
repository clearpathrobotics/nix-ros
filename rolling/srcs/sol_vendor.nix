{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "OUXT-Polaris";
    repo = "sol_vendor";
    rev = "ef23675c0cf90332f5a4d4d4ab5b6421e5e1c296";
    hash = "sha256-tLL8iTb5zANnOjKdZQqtOk9LtfZM2MIPCDjskB8yvGU=";
    name = "OUXT-Polaris-sol_vendor-ef23675c0cf90332f5a4d4d4ab5b6421e5e1c296";
  });
in
{
  sol_vendor = pkg "sha256-tLL8iTb5zANnOjKdZQqtOk9LtfZM2MIPCDjskB8yvGU=" ".";
}
