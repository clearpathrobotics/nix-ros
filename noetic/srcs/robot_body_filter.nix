{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "peci1";
    repo = "robot_body_filter";
    rev = "ce51dfcc2d63644b431be4237691c6ffce90eef3";
    hash = "sha256-v3peQGkcdTg8AkMSuVyWg1D4PWf5hcHlIqgISq3LQso=";
    name = "peci1-robot_body_filter-ce51dfcc2d63644b431be4237691c6ffce90eef3";
  });
in
{
  robot_body_filter = pkg "sha256-v3peQGkcdTg8AkMSuVyWg1D4PWf5hcHlIqgISq3LQso=" ".";
}
