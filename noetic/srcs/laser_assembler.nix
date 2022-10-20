{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "laser_assembler";
    rev = "0f09d860113b1c1ec3eb464ea0e62029a40120ab";
    hash = "sha256-WwMy/roG2rVCp4Co8k8xpM78eGrvFH4ha1WzquvmWL0=";
    name = "ros-perception-laser_assembler-0f09d860113b1c1ec3eb464ea0e62029a40120ab";
  });
in
{
  laser_assembler = pkg "sha256-WwMy/roG2rVCp4Co8k8xpM78eGrvFH4ha1WzquvmWL0=" ".";
}
