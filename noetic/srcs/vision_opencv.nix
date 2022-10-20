{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "vision_opencv";
    rev = "08b012c038e575d7fe1d538f11235a994159dc93";
    hash = "sha256-07U5+ty+oXOrZp9iA4Psbs4YnyL36le9dWlNjHQl6gw=";
    name = "ros-perception-vision_opencv-08b012c038e575d7fe1d538f11235a994159dc93";
  });
in
{
  cv_bridge = pkg "sha256-IzzKvoV0hdwdIWvgaWiQm9Ko2FNqmGdCqkuVcpicmjk=" "cv_bridge";
  image_geometry = pkg "sha256-UzDpks0afc5sRLJDSiVmTo+pNTWZ6OKawChid5Z8wV4=" "image_geometry";
  opencv_tests = pkg "sha256-JRjrxZo1GpQ8HpYhND8VULNUKBnHEZE67waOpNh93tY=" "opencv_tests";
  vision_opencv = pkg "sha256-/AFXYFsm63KZL9Sbyp0kIWCeuUBqitKeTY+hLpkrJAY=" "vision_opencv";
}
