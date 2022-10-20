{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "python_qt_binding";
    rev = "7095b4de210e2b235606f73565908f9af413db96";
    hash = "sha256-WVn0qAlfHbI7v54YC1kVQ957iMdDE+6G2rl7c829gts=";
    name = "ros-visualization-python_qt_binding-7095b4de210e2b235606f73565908f9af413db96";
  });
in
{
  python_qt_binding = pkg "sha256-WVn0qAlfHbI7v54YC1kVQ957iMdDE+6G2rl7c829gts=" ".";
}
