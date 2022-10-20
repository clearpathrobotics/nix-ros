{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "python_cmake_module";
    rev = "d31a0b13225786e076e537a6f1ba67ba5cb2e620";
    hash = "sha256-pLwS7Ch7Zqch033Z4Qe35W1AOQz4fvBmwGiH2C+FfNg=";
    name = "ros2-python_cmake_module-d31a0b13225786e076e537a6f1ba67ba5cb2e620";
  });
in
{
  python_cmake_module = pkg "sha256-pLwS7Ch7Zqch033Z4Qe35W1AOQz4fvBmwGiH2C+FfNg=" ".";
}
