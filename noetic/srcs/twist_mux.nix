{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-teleop";
    repo = "twist_mux";
    rev = "011508988c7d955bb61dc9ada64ffbe9a20e56bb";
    hash = "sha256-Sfxvbz2Sf/chZ6Cju52Qkh+ogy937YSavPulc1ZYa7E=";
    name = "ros-teleop-twist_mux-011508988c7d955bb61dc9ada64ffbe9a20e56bb";
  });
in
{
  twist_mux = pkg "sha256-Sfxvbz2Sf/chZ6Cju52Qkh+ogy937YSavPulc1ZYa7E=" ".";
}
