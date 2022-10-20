{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "vrpn_client_ros";
    rev = "7eca0d1b1229de6a2b4411a68359faf1b4149a1d";
    hash = "sha256-XrYX2uCvNxRJ99sUr7HdYzH6eddD62C49szeOK+KDGU=";
    name = "ros-drivers-vrpn_client_ros-7eca0d1b1229de6a2b4411a68359faf1b4149a1d";
  });
in
{
  vrpn_client_ros = pkg "sha256-XrYX2uCvNxRJ99sUr7HdYzH6eddD62C49szeOK+KDGU=" ".";
}
