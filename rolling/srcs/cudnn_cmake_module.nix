{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "tier4";
    repo = "cudnn_cmake_module";
    rev = "d5d12fae6c8b7c06631e8b7aaea0da446eb34ec7";
    hash = "sha256-soUjq5fiwC/MYoBiY1p7TkNuZSg2qLp1N0l+Aem6goI=";
    name = "tier4-cudnn_cmake_module-d5d12fae6c8b7c06631e8b7aaea0da446eb34ec7";
  });
in
{
  cudnn_cmake_module = pkg "sha256-soUjq5fiwC/MYoBiY1p7TkNuZSg2qLp1N0l+Aem6goI=" ".";
}
