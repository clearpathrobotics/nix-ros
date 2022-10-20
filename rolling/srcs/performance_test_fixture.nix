{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "performance_test_fixture";
    rev = "afb01872d0c03e31cd4fda04e91af8e5548de0a3";
    hash = "sha256-AGkyb6QjietsUExtcqvwhnGy5Sd2EFBT8JkBAd4rb4o=";
    name = "ros2-performance_test_fixture-afb01872d0c03e31cd4fda04e91af8e5548de0a3";
  });
in
{
  performance_test_fixture = pkg "sha256-AGkyb6QjietsUExtcqvwhnGy5Sd2EFBT8JkBAd4rb4o=" ".";
}
