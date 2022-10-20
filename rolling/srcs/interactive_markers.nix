{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "interactive_markers";
    rev = "993c2b4424c5bf3ef9e829d37c3585fd291b8fd7";
    hash = "sha256-b58vM9iFyUR4g2eFETR8lXW9Dcyz9dEMT1zx32qC7gk=";
    name = "ros-visualization-interactive_markers-993c2b4424c5bf3ef9e829d37c3585fd291b8fd7";
  });
in
{
  interactive_markers = pkg "sha256-b58vM9iFyUR4g2eFETR8lXW9Dcyz9dEMT1zx32qC7gk=" ".";
}
