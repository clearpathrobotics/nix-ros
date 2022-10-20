{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_shell";
    rev = "121ec65879cefd2b3dad0549157098ad86c78ac3";
    hash = "sha256-LsaTq+q79TACj9xLoxhdQ4lVtMdpWG6SJILUvfIxDB0=";
    name = "ros-visualization-rqt_shell-121ec65879cefd2b3dad0549157098ad86c78ac3";
  });
in
{
  rqt_shell = pkg "sha256-LsaTq+q79TACj9xLoxhdQ4lVtMdpWG6SJILUvfIxDB0=" ".";
}
