{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "roboception";
    repo = "rcdiscover";
    rev = "02e8f27f057ee03d430a65ca91489daedfe97656";
    hash = "sha256-kOUxoo6fLNyGfbbI0BINDU6na0JqV0A1cae1koSa2N8=";
    name = "roboception-rcdiscover-02e8f27f057ee03d430a65ca91489daedfe97656";
  });
in
{
  rcdiscover = pkg "sha256-kOUxoo6fLNyGfbbI0BINDU6na0JqV0A1cae1koSa2N8=" ".";
}
