{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "cst0";
    repo = "ros-monkeywrench";
    rev = "9c9b9721784f3dbb0409b6611afb03c13ce814d3";
    hash = "sha256-22fQwkeg771dowfMBb9jIFFIWlOmTjNuQzZaslrlQMs=";
    name = "cst0-ros-monkeywrench-9c9b9721784f3dbb0409b6611afb03c13ce814d3";
  });
in
{
  monkeywrench = pkg "sha256-22fQwkeg771dowfMBb9jIFFIWlOmTjNuQzZaslrlQMs=" ".";
}
