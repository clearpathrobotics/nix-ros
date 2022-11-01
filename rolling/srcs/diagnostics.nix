{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "diagnostics";
    rev = "7ab0d51bda7df161dfccb78d8229e8432d15d7f8";
    hash = "sha256-pXLtNZwdYAF3bCTtCBFq0wS8HimFlyjDuzijZgERos4=";
    name = "ros-diagnostics-7ab0d51bda7df161dfccb78d8229e8432d15d7f8";
  });
in
{
  diagnostic_aggregator = pkg "sha256-LdI5lMrQ4LeO4P0okO/YAGroJp7/Yuc4WJES76vZcL8=" "diagnostic_aggregator";
  diagnostic_updater = pkg "sha256-uWEg61qgYp6CQwAh+AuPEeNWEBJf+7R2+643HMdhu7g=" "diagnostic_updater";
  self_test = pkg "sha256-FCJD8K1S0pjZ6cKC+8m/bhLzn9W3TrAjt3BTQa/KX6M=" "self_test";
}
