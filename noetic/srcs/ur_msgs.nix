{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-industrial";
    repo = "ur_msgs";
    rev = "8455fa579497599a22e41388618d70aa62995693";
    hash = "sha256-uf9NmiPa8m7GBNkgn4HGSEJK9AmUWrn0oQyyOeX49Ok=";
    name = "ros-industrial-ur_msgs-8455fa579497599a22e41388618d70aa62995693";
  });
in
{
  ur_msgs = pkg "sha256-uf9NmiPa8m7GBNkgn4HGSEJK9AmUWrn0oQyyOeX49Ok=" ".";
}
