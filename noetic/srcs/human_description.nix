{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros4hri";
    repo = "human_description";
    rev = "de7c83b847915f856374ed9fa32056839ba0af0b";
    hash = "sha256-VseKzNC4QGDle+21X/xXaD/utEDYXVEzlBeMZSvitYk=";
    name = "ros4hri-human_description-de7c83b847915f856374ed9fa32056839ba0af0b";
  });
in
{
  human_description = pkg "sha256-VseKzNC4QGDle+21X/xXaD/utEDYXVEzlBeMZSvitYk=" ".";
}
