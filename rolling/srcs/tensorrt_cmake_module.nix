{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "tier4";
    repo = "tensorrt_cmake_module";
    rev = "0aff720f7b81384e785ac74489fa1eb7c73723d3";
    hash = "sha256-S620gK89qsxhq1mo2yFSZCD1LP45mJBLXJbCTiT5VZk=";
    name = "tier4-tensorrt_cmake_module-0aff720f7b81384e785ac74489fa1eb7c73723d3";
  });
in
{
  tensorrt_cmake_module = pkg "sha256-S620gK89qsxhq1mo2yFSZCD1LP45mJBLXJbCTiT5VZk=" ".";
}
