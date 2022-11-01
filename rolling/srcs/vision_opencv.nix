{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "vision_opencv";
    rev = "c620dd9210bae632ebb442a63f34e9e0d469c57b";
    hash = "sha256-wGbo5SUyUfnPa4dMWKR9UCA1SYaI4TmeaAgKxXm2upQ=";
    name = "ros-perception-vision_opencv-c620dd9210bae632ebb442a63f34e9e0d469c57b";
  });
in
{
  cv_bridge = pkg "sha256-IV74zrL5bJCFNYQugaAGBxDcatCMVTD088TAnjJBod8=" "cv_bridge";
  image_geometry = pkg "sha256-906rFxvVs8/lmvQFj1xxV/qwyGLNGb1zMeXW0h3Q/H0=" "image_geometry";
  opencv_tests = pkg "sha256-JFmRhmq9PNFmDHUiYHZm0VfzL0K0/tM7H3/VRlNp+VA=" "opencv_tests";
  vision_opencv = pkg "sha256-2CylWlOKFX9tKPCMJAKCgM6cLIbp6UTLWTWgs+T2cm0=" "vision_opencv";
}
