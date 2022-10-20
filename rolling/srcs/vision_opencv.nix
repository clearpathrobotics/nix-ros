{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "vision_opencv";
    rev = "623ba4ef1105b2bd4eb1f5315160256c5adef086";
    hash = "sha256-kNk3igYJXJ5kc4lpbJjghPoFOmoCojngBSWyvbuKqgA=";
    name = "ros-perception-vision_opencv-623ba4ef1105b2bd4eb1f5315160256c5adef086";
  });
in
{
  cv_bridge = pkg "sha256-dBOx5erfHZujCeftGSpaPaPgMsum6y3E6ecMkllLPDQ=" "cv_bridge";
  image_geometry = pkg "sha256-906rFxvVs8/lmvQFj1xxV/qwyGLNGb1zMeXW0h3Q/H0=" "image_geometry";
  opencv_tests = pkg "sha256-JFmRhmq9PNFmDHUiYHZm0VfzL0K0/tM7H3/VRlNp+VA=" "opencv_tests";
  vision_opencv = pkg "sha256-2CylWlOKFX9tKPCMJAKCgM6cLIbp6UTLWTWgs+T2cm0=" "vision_opencv";
}
