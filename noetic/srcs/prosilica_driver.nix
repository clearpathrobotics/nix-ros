{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "prosilica_driver";
    rev = "fd3855aff04699ee5d5f59150adc0873873ccabb";
    hash = "sha256-G0+1m457AOd7FPas6vxs3QTumvC0Teqq0feOi9sAI0c=";
    name = "ros-drivers-prosilica_driver-fd3855aff04699ee5d5f59150adc0873873ccabb";
  });
in
{
  prosilica_camera = pkg "sha256-JdAd3vM5uqcQOWz0VZOTeWveNOfsibxk8zrm1dbpCfM=" "prosilica_camera";
}
