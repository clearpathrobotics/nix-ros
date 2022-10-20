{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_console";
    rev = "a5286064e95dc44ce381e8ec62d8bbc9aa56fbe6";
    hash = "sha256-T8GkWk1EV/46cHkIOlDZx3aiwyWZZy5ttcxm6MFnbFM=";
    name = "ros-visualization-rqt_console-a5286064e95dc44ce381e8ec62d8bbc9aa56fbe6";
  });
in
{
  rqt_console = pkg "sha256-T8GkWk1EV/46cHkIOlDZx3aiwyWZZy5ttcxm6MFnbFM=" ".";
}
