{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-geographic-info";
    repo = "geographic_info";
    rev = "94b6a46e539159db3925d55c293769457fe8a1a8";
    hash = "sha256-0Y6FMuhzadNIyBRLDhlcjr9LONSct8y8LrlvVqJfCRg=";
    name = "ros-geographic-info-geographic_info-94b6a46e539159db3925d55c293769457fe8a1a8";
  });
in
{
  geodesy = pkg "sha256-HEnK2k4jCte6Fnjx7Htex+aZeQ75plXR0X1W0suDysA=" "geodesy";
  geographic_info = pkg "sha256-Fem5FLsZ+lxPuX8NgnKK7k543+bE3uOlVAPQ/5sMLJM=" "geographic_info";
  geographic_msgs = pkg "sha256-BtPJ5T7Jz8VMU+cnrpFD4Cv9G7g+nII1VtTGJZiycBE=" "geographic_msgs";
}
