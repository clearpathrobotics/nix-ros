{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "open-rmf";
    repo = "rmf_api_msgs";
    rev = "a2644a2906df3e4e595c08e677c1ab7718f9a1bf";
    hash = "sha256-IWqHO09VpWiMOQPZIH1ED6IQTLprLU4XeqlcEvXgzXM=";
    name = "open-rmf-rmf_api_msgs-a2644a2906df3e4e595c08e677c1ab7718f9a1bf";
  });
in
{
  rmf_api_msgs = pkg "sha256-IvAgHNRXdDQys8EvAHvdz402PVjCHOAh7GvmX82emRs=" "rmf_api_msgs";
}
