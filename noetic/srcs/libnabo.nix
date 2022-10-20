{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ethz-asl";
    repo = "libnabo";
    rev = "c925c4709a383b702d547993df8842a42bbeb230";
    hash = "sha256-3IhCqycCf/fxbdYeM2BejKwzeB4nzu6JxVMlSG3HliU=";
    name = "ethz-asl-libnabo-c925c4709a383b702d547993df8842a42bbeb230";
  });
in
{
  libnabo = pkg "sha256-3IhCqycCf/fxbdYeM2BejKwzeB4nzu6JxVMlSG3HliU=" ".";
}
