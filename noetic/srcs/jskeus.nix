{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "euslisp";
    repo = "jskeus";
    rev = "caa563b133431b2cd4b64718376cc215f2a0228d";
    hash = "sha256-CplEHdpGyHsyyjxwoogjlfVgQZ1s8PtZwUKQkAYdmaI=";
    name = "euslisp-jskeus-caa563b133431b2cd4b64718376cc215f2a0228d";
  });
in
{
}
