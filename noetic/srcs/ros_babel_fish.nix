{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "StefanFabian";
    repo = "ros_babel_fish";
    rev = "af8d0a3a5c0edeb3ad60d92efa6f304989189ad8";
    hash = "sha256-z77BcntmikQvoBP/PLFDQ2jdU++tuQkFQX9cbziaCcY=";
    name = "StefanFabian-ros_babel_fish-af8d0a3a5c0edeb3ad60d92efa6f304989189ad8";
  });
in
{
  ros_babel_fish = pkg "sha256-bSgpUPM4w/950zM1uq+y+eUh0bLFH30qx0df7irgK6k=" "ros_babel_fish";
  ros_babel_fish_test_msgs = pkg "sha256-+IMs/suyQngfY9u5HXc+MuV9+iFMljF0rfMuTlobT5g=" "ros_babel_fish_test_msgs";
}
