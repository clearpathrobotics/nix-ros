{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "HebiRobotics";
    repo = "hebi_cpp_api_ros";
    rev = "ec89761fa034443c59321a6351d3072dea0f3b89";
    hash = "sha256-QSAEabtAQlkrQTpDECGciMGUtGZzgFgFzK5D+IHf/O8=";
    name = "HebiRobotics-hebi_cpp_api_ros-ec89761fa034443c59321a6351d3072dea0f3b89";
  });
in
{
  hebi_cpp_api = pkg "sha256-QSAEabtAQlkrQTpDECGciMGUtGZzgFgFzK5D+IHf/O8=" ".";
}
