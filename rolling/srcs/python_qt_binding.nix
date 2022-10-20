{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "python_qt_binding";
    rev = "0fe281cf56b7f1f43966ecd0cc91a9aba23464a6";
    hash = "sha256-cx5WgVJW1/RsCJFGIfPEYrZ8huWyPTyTYFqG7oUqkrM=";
    name = "ros-visualization-python_qt_binding-0fe281cf56b7f1f43966ecd0cc91a9aba23464a6";
  });
in
{
  python_qt_binding = pkg "sha256-cx5WgVJW1/RsCJFGIfPEYrZ8huWyPTyTYFqG7oUqkrM=" ".";
}
