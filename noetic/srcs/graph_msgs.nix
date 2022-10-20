{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "PickNikRobotics";
    repo = "graph_msgs";
    rev = "530fe7c181f533edccd4b7763c321d7f95cf1a32";
    hash = "sha256-E6E3PhLbQPeJiSQgsh8Vr31Dj9x2qFyoTqVkTSsdk8o=";
    name = "PickNikRobotics-graph_msgs-530fe7c181f533edccd4b7763c321d7f95cf1a32";
  });
in
{
  graph_msgs = pkg "sha256-E6E3PhLbQPeJiSQgsh8Vr31Dj9x2qFyoTqVkTSsdk8o=" ".";
}
