{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "hbanzhaf";
    repo = "steering_functions";
    rev = "9b2dddba976269645f77e51a804d6e9a47408d95";
    hash = "sha256-Vu1lF9xvdLblRxs2RyHWh6ULaNT25JOkQFMxw/XFytI=";
    name = "hbanzhaf-steering_functions-9b2dddba976269645f77e51a804d6e9a47408d95";
  });
in
{
  steering_functions = pkg "sha256-Vu1lF9xvdLblRxs2RyHWh6ULaNT25JOkQFMxw/XFytI=" ".";
}
