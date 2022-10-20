{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "perception_open3d";
    rev = "7ddcc5769e58826adea728789c5f01091dca46c9";
    hash = "sha256-BR9Roqcw1UD+E++hn/vhZKF/cqfvzYoYWcYG6vdZf0Q=";
    name = "ros-perception-perception_open3d-7ddcc5769e58826adea728789c5f01091dca46c9";
  });
in
{
  open3d_conversions = pkg "sha256-z9q4RcTr+51vobHpQoZDeuX3uu0rAqjSDfO6rtJf1nk=" "open3d_conversions";
}
