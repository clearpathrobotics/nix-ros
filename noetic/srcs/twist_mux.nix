{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-teleop";
    repo = "twist_mux";
    rev = "6e53c11e318e21dfc4456703362f2c0417c3a3a5";
    hash = "sha256-VPLOmvpeM9W9XPlSWI01N7wnQUqIiS1HCJKO7wRGKJw=";
    name = "ros-teleop-twist_mux-6e53c11e318e21dfc4456703362f2c0417c3a3a5";
  });
in
{
  twist_mux = pkg "sha256-VPLOmvpeM9W9XPlSWI01N7wnQUqIiS1HCJKO7wRGKJw=" ".";
}
