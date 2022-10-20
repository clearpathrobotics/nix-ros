{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-sports";
    repo = "rcss3d_nao";
    rev = "0be69eb18ff61b9460214a31e2b086076bcfd94c";
    hash = "sha256-kiydlR35nLodRNpS+Qbo+TMTCXy8cFfUK4qSPpTk0NA=";
    name = "ros-sports-rcss3d_nao-0be69eb18ff61b9460214a31e2b086076bcfd94c";
  });
in
{
  rcss3d_nao = pkg "sha256-kiydlR35nLodRNpS+Qbo+TMTCXy8cFfUK4qSPpTk0NA=" ".";
}
