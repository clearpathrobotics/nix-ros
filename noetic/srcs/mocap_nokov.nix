{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "NOKOV-MOCAP";
    repo = "mocap_nokov";
    rev = "bee8d114871656493b34ba88e7ce9cab4e808957";
    hash = "sha256-SYWnhkBXRFs20zmKslIpEo+dOHwbWwFDO6+TrFBPyd8=";
    name = "NOKOV-MOCAP-mocap_nokov-bee8d114871656493b34ba88e7ce9cab4e808957";
  });
in
{
  mocap_nokov = pkg "sha256-SYWnhkBXRFs20zmKslIpEo+dOHwbWwFDO6+TrFBPyd8=" ".";
}
