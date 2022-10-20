{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-geographic-info";
    repo = "geographic_info";
    rev = "bc73c05ee79c31a88b4a23b545a2fe55eae8089e";
    hash = "sha256-/9PVZXeMGU5/0/S5OP6VNmew9kCgpexrZUmSUkDaVeM=";
    name = "ros-geographic-info-geographic_info-bc73c05ee79c31a88b4a23b545a2fe55eae8089e";
  });
in
{
  geodesy = pkg "sha256-Li8UDdr3BHQDXuMqtyGOW2Z7l2L1f7fA3eT2CW7L1pk=" "geodesy";
  geographic_info = pkg "sha256-/VdTo/eyAglZJcxZa2Jpv5OQhJaQ2rSUncgTx0HcHJY=" "geographic_info";
  geographic_msgs = pkg "sha256-hoLR1KQV64kgFF70zDhf6IkCekLcKyV6Gh8HplLkasM=" "geographic_msgs";
}
