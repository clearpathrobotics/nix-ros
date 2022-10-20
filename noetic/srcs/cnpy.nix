{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "PeterMitrano";
    repo = "cnpy";
    rev = "445491fc0b0d7b5e0e4175bf3e425259f68f7494";
    hash = "sha256-Cq2hHiKrxbDd7iBlip4AFNkJQCacbCQdOQgqCBYTWME=";
    name = "PeterMitrano-cnpy-445491fc0b0d7b5e0e4175bf3e425259f68f7494";
  });
in
{
  cnpy = pkg "sha256-Cq2hHiKrxbDd7iBlip4AFNkJQCacbCQdOQgqCBYTWME=" ".";
}
