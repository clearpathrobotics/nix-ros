{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "wg-perception";
    repo = "object_recognition_msgs";
    rev = "c6f22411f9929c37ec96d9e2fee308a8cdbbe90b";
    hash = "sha256-fNfJJcPmwvybHZCL+pR1s0QyA+F0DCbsnpfQ5e+fTI8=";
    name = "wg-perception-object_recognition_msgs-c6f22411f9929c37ec96d9e2fee308a8cdbbe90b";
  });
in
{
  object_recognition_msgs = pkg "sha256-fNfJJcPmwvybHZCL+pR1s0QyA+F0DCbsnpfQ5e+fTI8=" ".";
}
