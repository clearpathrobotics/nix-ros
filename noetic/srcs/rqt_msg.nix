{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_msg";
    rev = "a28d751293adfc5db40ca103e1aab0a11c733639";
    hash = "sha256-yX7pn/QPWdoo6xHv+7VcgVS5vnjMRYZWiqyuuImm2n4=";
    name = "ros-visualization-rqt_msg-a28d751293adfc5db40ca103e1aab0a11c733639";
  });
in
{
  rqt_msg = pkg "sha256-yX7pn/QPWdoo6xHv+7VcgVS5vnjMRYZWiqyuuImm2n4=" ".";
}
