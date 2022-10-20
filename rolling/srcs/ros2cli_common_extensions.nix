{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "ros2cli_common_extensions";
    rev = "37bb178da4131686a53ad8fbb3a200f39d55348d";
    hash = "sha256-blAHa+fzaqU4zttJxpJoVyuBWyNd0UFib2kwrUNfLgk=";
    name = "ros2-ros2cli_common_extensions-37bb178da4131686a53ad8fbb3a200f39d55348d";
  });
in
{
  ros2cli_common_extensions = pkg "sha256-Os3/j/JAqt49PwJK5Rw08TvuKV4HqFDD8/7eI/bgoWc=" "ros2cli_common_extensions";
}
