{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros4hri";
    repo = "pyhri";
    rev = "5ed994265117b76b3c72aad4e44e4f7f66380db9";
    hash = "sha256-Ke0Z2e3RBIo7OJcd25BizbFJJ1e3JAdULKfIzWh5GCc=";
    name = "ros4hri-pyhri-5ed994265117b76b3c72aad4e44e4f7f66380db9";
  });
in
{
  pyhri = pkg "sha256-Ke0Z2e3RBIo7OJcd25BizbFJJ1e3JAdULKfIzWh5GCc=" ".";
}
