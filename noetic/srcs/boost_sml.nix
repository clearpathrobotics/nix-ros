{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "PickNikRobotics";
    repo = "boost_sml";
    rev = "41799f37d308f2411ac1cd06386cc369b36a376c";
    hash = "sha256-qwMrGtY/SN91FAkAyzgn/UwjlfckjeKZMVaIjyE9CZg=";
    name = "PickNikRobotics-boost_sml-41799f37d308f2411ac1cd06386cc369b36a376c";
  });
in
{
  boost_sml = pkg "sha256-qwMrGtY/SN91FAkAyzgn/UwjlfckjeKZMVaIjyE9CZg=" ".";
}
