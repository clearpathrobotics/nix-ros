{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "graft";
    rev = "2dcee2016c4cf0a81aef45c21b5a5ecc14ae324a";
    hash = "sha256-iptW0ogmMJY4rrW2fbaDEO+ZC/+ZS4Nx1KvnUlQADaE=";
    name = "ros-perception-graft-2dcee2016c4cf0a81aef45c21b5a5ecc14ae324a";
  });
in
{
  graft = pkg "sha256-iptW0ogmMJY4rrW2fbaDEO+ZC/+ZS4Nx1KvnUlQADaE=" ".";
}
