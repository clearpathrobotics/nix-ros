{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-tooling";
    repo = "keyboard_handler";
    rev = "bca61efd6ef1c5100d14689b935363bc3cdca070";
    hash = "sha256-4tltyZzSGEWP65NF9HSg+FiOn2L/sKPQA2UwX32N8EM=";
    name = "ros-tooling-keyboard_handler-bca61efd6ef1c5100d14689b935363bc3cdca070";
  });
in
{
  keyboard_handler = pkg "sha256-JUqGYJ1clIrWcfdw0HY26mbQf2ntstaLQcYynD2ii4U=" "keyboard_handler";
}
