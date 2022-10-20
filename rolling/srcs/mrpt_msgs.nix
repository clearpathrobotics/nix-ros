{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "mrpt-ros-pkg";
    repo = "mrpt_msgs";
    rev = "c9e44e4c8a7db4b178b65b11baff8d292d22494d";
    hash = "sha256-qgOOtgqCxm1fOGw22QejnY+BObs965PKfkqH48rrJQ4=";
    name = "mrpt-ros-pkg-mrpt_msgs-c9e44e4c8a7db4b178b65b11baff8d292d22494d";
  });
in
{
  mrpt_msgs = pkg "sha256-qgOOtgqCxm1fOGw22QejnY+BObs965PKfkqH48rrJQ4=" ".";
}
