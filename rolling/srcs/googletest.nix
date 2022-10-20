{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ament";
    repo = "googletest";
    rev = "f544da397da024f876d0094461a0e167ad293f63";
    hash = "sha256-Suwh6ADjOC11XqXRB1n3agPJpCicqRxayQ4uC8NA/x4=";
    name = "ament-googletest-f544da397da024f876d0094461a0e167ad293f63";
  });
in
{
  gmock_vendor = pkg "sha256-9a2mzifX5WZ65XB00MXj/2Sx29pzlnH/SsUHvRc/n8g=" "googlemock";
  gtest_vendor = pkg "sha256-u2gx0IqMkxU6eLi5phF25OuU1T4HZuCuIhQBi48RXYM=" "googletest";
}
