{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_action";
    rev = "c449b3865f03f3c175c8fc70f50bb02acff4f2f1";
    hash = "sha256-EMPXk8BgbnidcYM6ZGCkAz/9/suPjItwURWwmQUduMU=";
    name = "ros-visualization-rqt_action-c449b3865f03f3c175c8fc70f50bb02acff4f2f1";
  });
in
{
  rqt_action = pkg "sha256-EMPXk8BgbnidcYM6ZGCkAz/9/suPjItwURWwmQUduMU=" ".";
}
