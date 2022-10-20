{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "eigen3_cmake_module";
    rev = "96779cfb955cbea1f88de5e7d304ca04b8278968";
    hash = "sha256-HYzm0DrBm9AT+4eYJ6+turdRGtO4umPzTYfi/s/x3g4=";
    name = "ros2-eigen3_cmake_module-96779cfb955cbea1f88de5e7d304ca04b8278968";
  });
in
{
  eigen3_cmake_module = pkg "sha256-HYzm0DrBm9AT+4eYJ6+turdRGtO4umPzTYfi/s/x3g4=" ".";
}
