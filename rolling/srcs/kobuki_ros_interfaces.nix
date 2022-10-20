{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "kobuki-base";
    repo = "kobuki_ros_interfaces";
    rev = "7228c6864bbc9304126fb0000f68bdbbb9b01904";
    hash = "sha256-x89X7OZDEMyB/cZ03WHZWiig8s0hxZyQJSCC+esU3bI=";
    name = "kobuki-base-kobuki_ros_interfaces-7228c6864bbc9304126fb0000f68bdbbb9b01904";
  });
in
{
  kobuki_ros_interfaces = pkg "sha256-x89X7OZDEMyB/cZ03WHZWiig8s0hxZyQJSCC+esU3bI=" ".";
}
