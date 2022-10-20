{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-teleop";
    repo = "twist_mux_msgs";
    rev = "66f03e680fc183bd356d5659ce0fa40f879d27d2";
    hash = "sha256-nFTjNHn8Nj72WiOy79WlpfEU1l66Ra/e7n67sfL4Dn0=";
    name = "ros-teleop-twist_mux_msgs-66f03e680fc183bd356d5659ce0fa40f879d27d2";
  });
in
{
  twist_mux_msgs = pkg "sha256-nFTjNHn8Nj72WiOy79WlpfEU1l66Ra/e7n67sfL4Dn0=" ".";
}
