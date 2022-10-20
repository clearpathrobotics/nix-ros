{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "peci1";
    repo = "rosbash_params";
    rev = "c7ab9a1f2741682e16176b496d753815c5dd1fc8";
    hash = "sha256-UceAkhRQ6CagMVDQ5BbZWHKSEdneE2VI3B5FnnmEkLM=";
    name = "peci1-rosbash_params-c7ab9a1f2741682e16176b496d753815c5dd1fc8";
  });
in
{
  rosbash_params = pkg "sha256-UceAkhRQ6CagMVDQ5BbZWHKSEdneE2VI3B5FnnmEkLM=" ".";
}
