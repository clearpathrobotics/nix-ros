{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "eclipse-zenoh";
    repo = "zenoh-plugin-dds";
    rev = "6ae7447de589ebaaed0210f30343760df28101a2";
    hash = "sha256-PmFyGYIAvBHsM/5BRWsk0Wfgy5huoEtWaIjBcVNgeEM=";
    name = "eclipse-zenoh-zenoh-plugin-dds-6ae7447de589ebaaed0210f30343760df28101a2";
  });
in
{
  zenoh_bridge_dds = pkg "sha256-PmFyGYIAvBHsM/5BRWsk0Wfgy5huoEtWaIjBcVNgeEM=" ".";
}
