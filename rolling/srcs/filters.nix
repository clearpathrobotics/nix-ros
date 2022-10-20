{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "filters";
    rev = "5507bc5175cb74e825ee20b9dc19e67ef6a4a022";
    hash = "sha256-ocN+iqBMa4KB46fmO5GaufMyOy+gLH/ZIFg0UN6nz/Q=";
    name = "ros-filters-5507bc5175cb74e825ee20b9dc19e67ef6a4a022";
  });
in
{
  filters = pkg "sha256-ocN+iqBMa4KB46fmO5GaufMyOy+gLH/ZIFg0UN6nz/Q=" ".";
}
