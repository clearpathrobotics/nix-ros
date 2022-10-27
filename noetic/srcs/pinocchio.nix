{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "stack-of-tasks";
    repo = "pinocchio";
    rev = "524e42580fa8be504d5af78efb1248d618af47a2";
    hash = "sha256-sA/D6luZONRN57GsOfxfwfDFZHZSHbg/9sWZ/W2gxkw=";
    name = "stack-of-tasks-pinocchio-524e42580fa8be504d5af78efb1248d618af47a2";
  });
in
{
  pinocchio = pkg "sha256-sA/D6luZONRN57GsOfxfwfDFZHZSHbg/9sWZ/W2gxkw=" ".";
}
