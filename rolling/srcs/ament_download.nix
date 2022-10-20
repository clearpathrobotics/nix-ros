{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "samsung-ros";
    repo = "ament_download";
    rev = "e3bfd0e48d308244752a2330ed611e9fd9edf0db";
    hash = "sha256-6V9DhJraMIbNz3xeSeczpOFyaWgBqKsz2vQV4jFl6qk=";
    name = "samsung-ros-ament_download-e3bfd0e48d308244752a2330ed611e9fd9edf0db";
  });
in
{
  ament_download = pkg "sha256-6V9DhJraMIbNz3xeSeczpOFyaWgBqKsz2vQV4jFl6qk=" ".";
}
