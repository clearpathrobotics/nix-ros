{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "urg_node";
    rev = "53c0b6d7c14905d3cfcf31f022414e0c9bffe70c";
    hash = "sha256-Ayx25Jy9EApHBQisQAS0kcNnLjRrN9RHIIfEjsdvNCQ=";
    name = "ros-drivers-urg_node-53c0b6d7c14905d3cfcf31f022414e0c9bffe70c";
  });
in
{
  urg_node = pkg "sha256-Ayx25Jy9EApHBQisQAS0kcNnLjRrN9RHIIfEjsdvNCQ=" ".";
}
