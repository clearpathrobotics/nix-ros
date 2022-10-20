{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "SICKAG";
    repo = "sick_scan";
    rev = "b44cd27a3d385e04bc098725d441fb6c42067eb9";
    hash = "sha256-ll8+Vf1hKmNIRwYaZQrQKbZa5J3RAhr++dSxLr5S9qI=";
    name = "SICKAG-sick_scan-b44cd27a3d385e04bc098725d441fb6c42067eb9";
  });
in
{
  sick_scan = pkg "sha256-ll8+Vf1hKmNIRwYaZQrQKbZa5J3RAhr++dSxLr5S9qI=" ".";
}
