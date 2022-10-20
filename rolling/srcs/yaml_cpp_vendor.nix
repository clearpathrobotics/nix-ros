{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "yaml_cpp_vendor";
    rev = "b813bbe49ae43a7a1939b13b7fb77d269c13f46e";
    hash = "sha256-8wKV64ZdSgvYd9lNsGE86RM8d1Ok39NOkPBIFN6aYW4=";
    name = "ros2-yaml_cpp_vendor-b813bbe49ae43a7a1939b13b7fb77d269c13f46e";
  });
in
{
  yaml_cpp_vendor = pkg "sha256-8wKV64ZdSgvYd9lNsGE86RM8d1Ok39NOkPBIFN6aYW4=" ".";
}
