{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ipa320";
    repo = "cob_substitute";
    rev = "dc51a41d000512a272f267459efba5bf94dedda6";
    hash = "sha256-6VCZuTc4KvnQyWgC2yDt3HUOy7AmRDR8upUV68eQRDc=";
    name = "ipa320-cob_substitute-dc51a41d000512a272f267459efba5bf94dedda6";
  });
in
{
  cob_docker_control = pkg "sha256-xC6P2ZkXr0vm54AMqNieRy4OYhcaGgDLOvE9wTEZrCY=" "cob_docker_control";
  cob_reflector_referencing = pkg "sha256-yupV/pC15zhbZ75JqAGl2mi1ijdJwzWrzUys3GGvJQg=" "cob_reflector_referencing";
  cob_safety_controller = pkg "sha256-4DQpKAGIZLFF4T174vCXNIOBzWZd4eerpizmDHqU2a0=" "cob_safety_controller";
  cob_substitute = pkg "sha256-7XkdS4/kC4sPJN+dp2jY9gi4yibOm0NtLaXx0JJdviE=" "cob_substitute";
  ipa_differential_docking = pkg "sha256-TqmliUUeFMSe5CuXxxBCnX2nhJJltPS2v1tzmA+P/HE=" "ipa_differential_docking";
}
