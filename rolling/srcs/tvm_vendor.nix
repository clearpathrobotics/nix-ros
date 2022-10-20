{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "autowarefoundation";
    repo = "tvm_vendor";
    rev = "87e331204d1303541c9175786c7ddd69028dfdba";
    hash = "sha256-BCRYfzePkiTdn2b0i8TvscpcKjP/cNyikyHZsLAsOfY=";
    name = "autowarefoundation-tvm_vendor-87e331204d1303541c9175786c7ddd69028dfdba";
  });
in
{
  tvm_vendor = pkg "sha256-BCRYfzePkiTdn2b0i8TvscpcKjP/cNyikyHZsLAsOfY=" ".";
}
