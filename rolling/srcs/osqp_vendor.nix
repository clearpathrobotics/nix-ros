{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "tier4";
    repo = "osqp_vendor";
    rev = "84661fc072ecd19cd006864c372c259d0c0de4b1";
    hash = "sha256-dbYqjTLNjsy5tPdKs236dYev7p5sHJ0DXkpwtKjtKk4=";
    name = "tier4-osqp_vendor-84661fc072ecd19cd006864c372c259d0c0de4b1";
  });
in
{
  osqp_vendor = pkg "sha256-dbYqjTLNjsy5tPdKs236dYev7p5sHJ0DXkpwtKjtKk4=" ".";
}
