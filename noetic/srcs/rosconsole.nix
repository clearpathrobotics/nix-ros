{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "rosconsole";
    rev = "c9503279e932a04b3d2667cca3d28a8133cacc22";
    hash = "sha256-tzbrgKTN6reO9JgsghmbED9XEVkiRQsejRViArgFjhs=";
    name = "ros-rosconsole-c9503279e932a04b3d2667cca3d28a8133cacc22";
  });
in
{
  rosconsole = pkg "sha256-tzbrgKTN6reO9JgsghmbED9XEVkiRQsejRViArgFjhs=" ".";
}
