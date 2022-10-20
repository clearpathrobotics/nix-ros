{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "rcutils";
    rev = "61018b2f88e55ac81edda4a45a02634493c999ed";
    hash = "sha256-yNn4wGHkU418vNpn+hUEBSmXIcV/nD5BfgLONFAf5r4=";
    name = "ros2-rcutils-61018b2f88e55ac81edda4a45a02634493c999ed";
  });
in
{
  rcutils = pkg "sha256-yNn4wGHkU418vNpn+hUEBSmXIcV/nD5BfgLONFAf5r4=" ".";
}
