{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-tooling";
    repo = "libstatistics_collector";
    rev = "740a3691c71c6ae82a15a11f6ef66dc782f464b6";
    hash = "sha256-K2Z6Ws0wvDOh99JdVTttbeYG861jJ1iUl6DM06LPSdA=";
    name = "ros-tooling-libstatistics_collector-740a3691c71c6ae82a15a11f6ef66dc782f464b6";
  });
in
{
  libstatistics_collector = pkg "sha256-K2Z6Ws0wvDOh99JdVTttbeYG861jJ1iUl6DM06LPSdA=" ".";
}
