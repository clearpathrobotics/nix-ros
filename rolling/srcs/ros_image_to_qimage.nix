{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-sports";
    repo = "ros_image_to_qimage";
    rev = "f9254d2aa7d47428e73f326f4179b8a682d39351";
    hash = "sha256-1BlZAxJyBNXSus8MpdHfqli7tX67OUm1rVWMa0iuXLw=";
    name = "ros-sports-ros_image_to_qimage-f9254d2aa7d47428e73f326f4179b8a682d39351";
  });
in
{
  ros_image_to_qimage = pkg "sha256-1BlZAxJyBNXSus8MpdHfqli7tX67OUm1rVWMa0iuXLw=" ".";
}
