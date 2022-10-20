{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "roboception";
    repo = "rc_dynamics_api";
    rev = "e6855cb8668419f575bbf98ca7924d99f4103125";
    hash = "sha256-74azdTfAJYU3YBzPJJ1Ph4Di1Et/ejoBQcujNSFOLaY=";
    name = "roboception-rc_dynamics_api-e6855cb8668419f575bbf98ca7924d99f4103125";
  });
in
{
  rc_dynamics_api = pkg "sha256-74azdTfAJYU3YBzPJJ1Ph4Di1Et/ejoBQcujNSFOLaY=" ".";
}
