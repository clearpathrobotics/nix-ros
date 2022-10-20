{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "cmake_modules";
    rev = "2978abe7ee4d5de64f5e11d1b2a07aab747c7b69";
    hash = "sha256-nMPlplvRZXm5b/hAUMqVyQmAn7WG7VmMAke06OUk7bc=";
    name = "ros-cmake_modules-2978abe7ee4d5de64f5e11d1b2a07aab747c7b69";
  });
in
{
  cmake_modules = pkg "sha256-nMPlplvRZXm5b/hAUMqVyQmAn7WG7VmMAke06OUk7bc=" ".";
}
