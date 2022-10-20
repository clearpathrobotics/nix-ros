{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ignition-release";
    repo = "ignition_cmake2_vendor";
    rev = "b5912fcbb111a5262f26cbaf92aeb5599f0a872a";
    hash = "sha256-qiBzlPZ+oV9H6uBg9wMSwmPkuP3ojmBkhwxrBtCjMqU=";
    name = "ignition-release-ignition_cmake2_vendor-b5912fcbb111a5262f26cbaf92aeb5599f0a872a";
  });
in
{
  ignition_cmake2_vendor = pkg "sha256-qiBzlPZ+oV9H6uBg9wMSwmPkuP3ojmBkhwxrBtCjMqU=" ".";
}
