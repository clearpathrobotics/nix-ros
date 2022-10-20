{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "Autoware-AI";
    repo = "qpoases_vendor";
    rev = "f4f9cb85e41a19958982a064d70fa06abcd3fe86";
    hash = "sha256-mvj1oQqgQj0/z/MN3uRZk+Bj4ljBFmUy0R5jKwe5bvQ=";
    name = "Autoware-AI-qpoases_vendor-f4f9cb85e41a19958982a064d70fa06abcd3fe86";
  });
in
{
  qpoases_vendor = pkg "sha256-mvj1oQqgQj0/z/MN3uRZk+Bj4ljBFmUy0R5jKwe5bvQ=" ".";
}
