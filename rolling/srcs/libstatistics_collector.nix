{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-tooling";
    repo = "libstatistics_collector";
    rev = "03112ab37e0fb7bc95d27fbc16c5f6335b2acda8";
    hash = "sha256-Rc/F/YKEqYxT9YgPZmyDjKcbomJL0avoiYKmzUimjso=";
    name = "ros-tooling-libstatistics_collector-03112ab37e0fb7bc95d27fbc16c5f6335b2acda8";
  });
in
{
  libstatistics_collector = pkg "sha256-Rc/F/YKEqYxT9YgPZmyDjKcbomJL0avoiYKmzUimjso=" ".";
}
