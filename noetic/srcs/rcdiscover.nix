{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "roboception";
    repo = "rcdiscover";
    rev = "69f50229cb0f480d3c29212305df461aae1e2374";
    hash = "sha256-72p656ArCPtWXskpqeMq43nWXD3IG6S/Msu5toXvAZY=";
    name = "roboception-rcdiscover-69f50229cb0f480d3c29212305df461aae1e2374";
  });
in
{
  rcdiscover = pkg "sha256-72p656ArCPtWXskpqeMq43nWXD3IG6S/Msu5toXvAZY=" ".";
}
