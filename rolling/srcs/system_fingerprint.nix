{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "MetroRobots";
    repo = "ros_system_fingerprint";
    rev = "2108fa41aa04c8965021533f9a2f7d58ede56595";
    hash = "sha256-swG8fwjiFc0LXSlbA6Lml0jlh/VyNS//insRqM01fr0=";
    name = "MetroRobots-ros_system_fingerprint-2108fa41aa04c8965021533f9a2f7d58ede56595";
  });
in
{
  system_fingerprint = pkg "sha256-swG8fwjiFc0LXSlbA6Lml0jlh/VyNS//insRqM01fr0=" ".";
}
