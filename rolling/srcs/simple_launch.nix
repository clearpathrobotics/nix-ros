{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "oKermorgant";
    repo = "simple_launch";
    rev = "5719685ba63b5a9033d9e197bf437993f3b64e29";
    hash = "sha256-mpjuhBrbaXPIXsnhADFSCphocTqC3AUzLLKVn5rz4Ro=";
    name = "oKermorgant-simple_launch-5719685ba63b5a9033d9e197bf437993f3b64e29";
  });
in
{
  simple_launch = pkg "sha256-mpjuhBrbaXPIXsnhADFSCphocTqC3AUzLLKVn5rz4Ro=" ".";
}
