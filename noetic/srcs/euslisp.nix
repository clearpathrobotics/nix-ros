{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "euslisp";
    repo = "EusLisp";
    rev = "7b154531f3fd3d81930eb51b34eec86f8d7dc918";
    hash = "sha256-FDKtpNBaCkbBOBEtcoxJhs/Zzh41Zpb77p8CRjltU4M=";
    name = "euslisp-EusLisp-7b154531f3fd3d81930eb51b34eec86f8d7dc918";
  });
in
{
}
