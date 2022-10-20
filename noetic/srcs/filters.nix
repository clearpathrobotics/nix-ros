{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "filters";
    rev = "aa9ed7f5f5813f20f8c2d33f1b2b058d4c9581b9";
    hash = "sha256-lvipp+RFSM8dgJaRCAdkUeVsspG2e/+YubeuabZwyDw=";
    name = "ros-filters-aa9ed7f5f5813f20f8c2d33f1b2b058d4c9581b9";
  });
in
{
  filters = pkg "sha256-lvipp+RFSM8dgJaRCAdkUeVsspG2e/+YubeuabZwyDw=" ".";
}
