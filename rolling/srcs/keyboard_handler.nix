{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-tooling";
    repo = "keyboard_handler";
    rev = "572fd8944008d3e92b1fc0a1fe57f94513ee960b";
    hash = "sha256-TiQ48MseXaOReAG1DVVWD01g9zcQKoBu+we4EJ291Ak=";
    name = "ros-tooling-keyboard_handler-572fd8944008d3e92b1fc0a1fe57f94513ee960b";
  });
in
{
  keyboard_handler = pkg "sha256-JUqGYJ1clIrWcfdw0HY26mbQf2ntstaLQcYynD2ii4U=" "keyboard_handler";
}
