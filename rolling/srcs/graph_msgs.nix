{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "PickNikRobotics";
    repo = "graph_msgs";
    rev = "24e1b635924ed8f70606b83aa2f7d1fa959054df";
    hash = "sha256-HNV+pWsymOkrQIoJu6KvrpSeA9uYCYApgDqAz9qm0ns=";
    name = "PickNikRobotics-graph_msgs-24e1b635924ed8f70606b83aa2f7d1fa959054df";
  });
in
{
  graph_msgs = pkg "sha256-HNV+pWsymOkrQIoJu6KvrpSeA9uYCYApgDqAz9qm0ns=" ".";
}
