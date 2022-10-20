{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "sros2";
    rev = "face973164e4fb71e36cca8321de4ebc3f1b7af9";
    hash = "sha256-wlDhqtia9TVTyQIHzZDTDuqIsOyA0RFHjFyEdKLksgU=";
    name = "ros2-sros2-face973164e4fb71e36cca8321de4ebc3f1b7af9";
  });
in
{
  sros2 = pkg "sha256-iIP4FpLm9H8ZzL4NurKCQZszYHwFsSGj5vyog19gmpk=" "sros2";
  sros2_cmake = pkg "sha256-AAXL8nDTsYxXxBec37xSCSO29W1CdfCOftJTQJ3Byws=" "sros2_cmake";
}
