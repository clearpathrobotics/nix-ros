{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "pr2";
    repo = "pr2_ethercat_drivers";
    rev = "2b6a5d1877cbdea357cf6d4b43a18812e0f436e9";
    hash = "sha256-prh/E4IkHn/eIVnCHTvGigFnKjmFbVfc74Qfx4LqxP0=";
    name = "pr2-pr2_ethercat_drivers-2b6a5d1877cbdea357cf6d4b43a18812e0f436e9";
  });
in
{
  ethercat_hardware = pkg "sha256-7DaaFAPh7ruWkMPXVfjAUa8SVBrZe4XNmc2cl6IbMk4=" "ethercat_hardware";
  fingertip_pressure = pkg "sha256-IEJPYTpZo4H+w72acM8sEOdiyg1m7VJ3oR2KqPrO/fQ=" "fingertip_pressure";
  pr2_ethercat_drivers = pkg "sha256-8Jda4oSAP6kEhorxgs8PJsOL+FQwrEGIgSKTsZUaIHI=" "pr2_ethercat_drivers";
}
