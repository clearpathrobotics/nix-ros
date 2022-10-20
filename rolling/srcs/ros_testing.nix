{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "ros_testing";
    rev = "b3f6cc6932ba5a3181eeb10bfed874dcebef40b7";
    hash = "sha256-q9QzSkuNlGL4aJ3KbTrHKLlZYOF8mrZVDe86jPEBfEI=";
    name = "ros2-ros_testing-b3f6cc6932ba5a3181eeb10bfed874dcebef40b7";
  });
in
{
  ros2test = pkg "sha256-DvtM7VdDeMEuBRrcIlaOHwabJ8TvJWqMJFel7P9rY4s=" "ros2test";
  ros_testing = pkg "sha256-wcx4E4Cli5Vd8Z9FxBz85aara7OcxPWxFM1ALrQ9u/E=" "ros_testing";
}
