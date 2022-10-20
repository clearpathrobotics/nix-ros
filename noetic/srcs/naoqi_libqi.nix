{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-naoqi";
    repo = "libqi";
    rev = "44ad0e424f331e97e1797f709bd9a7c5c19343db";
    hash = "sha256-bUC1r+Rp21xD4hrrHyeoaqJg31krTp+WCKx2+ssa+WM=";
    name = "ros-naoqi-libqi-44ad0e424f331e97e1797f709bd9a7c5c19343db";
  });
in
{
  LibQi = pkg "sha256-bUC1r+Rp21xD4hrrHyeoaqJg31krTp+WCKx2+ssa+WM=" ".";
}
