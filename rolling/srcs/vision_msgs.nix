{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "vision_msgs";
    rev = "aa91c9af518ae97cb5006e8adc3b1b6cd68a1d1c";
    hash = "sha256-u5BECuGIHEsEfmUtZ9YkD02VnClx8+eeuy9Ed2o59iI=";
    name = "ros-perception-vision_msgs-aa91c9af518ae97cb5006e8adc3b1b6cd68a1d1c";
  });
in
{
  vision_msgs = pkg "sha256-u5BECuGIHEsEfmUtZ9YkD02VnClx8+eeuy9Ed2o59iI=" ".";
}
