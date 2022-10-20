{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "rst-tu-dortmund";
    repo = "costmap_converter";
    rev = "e8c1d2c8c8d5e34b1980062e28e4a4dc1817bade";
    hash = "sha256-0ks1nT5DMSkuhdq8Y37kdFLSp2gwatQDCjlCnRPJnwI=";
    name = "rst-tu-dortmund-costmap_converter-e8c1d2c8c8d5e34b1980062e28e4a4dc1817bade";
  });
in
{
  costmap_converter = pkg "sha256-0ks1nT5DMSkuhdq8Y37kdFLSp2gwatQDCjlCnRPJnwI=" ".";
}
