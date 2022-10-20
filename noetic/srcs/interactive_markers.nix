{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "interactive_markers";
    rev = "36740b17068a42f44dc564d29b6b25c21c3a01a0";
    hash = "sha256-dU04Q2e5vahQr59lKcwELE7g488ISs2o7hNafeqkpQg=";
    name = "ros-visualization-interactive_markers-36740b17068a42f44dc564d29b6b25c21c3a01a0";
  });
in
{
  interactive_markers = pkg "sha256-dU04Q2e5vahQr59lKcwELE7g488ISs2o7hNafeqkpQg=" ".";
}
