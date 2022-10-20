{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "pybind11_vendor";
    rev = "04f56fac9bc23f2b8177459d958e75fa19af492b";
    hash = "sha256-reQHhEHKFHXX+bqcGxpGaT86rnglwsKZVXlxUn8m2WA=";
    name = "ros2-pybind11_vendor-04f56fac9bc23f2b8177459d958e75fa19af492b";
  });
in
{
  pybind11_vendor = pkg "sha256-reQHhEHKFHXX+bqcGxpGaT86rnglwsKZVXlxUn8m2WA=" ".";
}
