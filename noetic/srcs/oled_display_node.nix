{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "UbiquityRobotics";
    repo = "oled_display_node";
    rev = "1a630f64cf1f53641883f69c973cc1f1710a7c18";
    hash = "sha256-1Q6asDq7ofuvjvKoy8GuCf9TDcrIez6g5/RbHV0Hd/k=";
    name = "UbiquityRobotics-oled_display_node-1a630f64cf1f53641883f69c973cc1f1710a7c18";
  });
in
{
  oled_display_node = pkg "sha256-1Q6asDq7ofuvjvKoy8GuCf9TDcrIez6g5/RbHV0Hd/k=" ".";
}
