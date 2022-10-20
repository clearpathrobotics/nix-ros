{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_action";
    rev = "b34c1406a12b40ca97355b57aa97767fd3a9a365";
    hash = "sha256-IsYmaq2N4Z+X24KthcmszTTbtnJHKjMURe//IeHW+zI=";
    name = "ros-visualization-rqt_action-b34c1406a12b40ca97355b57aa97767fd3a9a365";
  });
in
{
  rqt_action = pkg "sha256-IsYmaq2N4Z+X24KthcmszTTbtnJHKjMURe//IeHW+zI=" ".";
}
