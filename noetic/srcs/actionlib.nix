{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "actionlib";
    rev = "3073509690976a8816636d41f04c013633f1c119";
    hash = "sha256-VPvsGuhueb+rONHYt3tGkN2zhhDX9pb2l3xRlBSdY9Q=";
    name = "ros-actionlib-3073509690976a8816636d41f04c013633f1c119";
  });
in
{
  actionlib = pkg "sha256-pWhSQ79iVdR8UoN30rQLSCFDUgCTWSFGDAEgM4CU488=" "actionlib";
  actionlib_tools = pkg "sha256-ftzmbmiGZQRkdQfvFK7vO+nusyApqcvGu8nONNIdXuE=" "actionlib_tools";
}
