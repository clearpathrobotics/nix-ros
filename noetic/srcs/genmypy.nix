{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "rospypi";
    repo = "genmypy";
    rev = "98378a4b32f3867e86ea16573774954b1d112ab3";
    hash = "sha256-Vse8IMnGwQ5VI5VdmEw3uIyNTrzvkb05k8PNouFcSKM=";
    name = "rospypi-genmypy-98378a4b32f3867e86ea16573774954b1d112ab3";
  });
in
{
  genmypy = pkg "sha256-Vse8IMnGwQ5VI5VdmEw3uIyNTrzvkb05k8PNouFcSKM=" ".";
}
