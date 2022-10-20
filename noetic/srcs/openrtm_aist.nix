{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "tork-a";
    repo = "openrtm_aist-release";
    rev = "acdb4feb245a4956256843b2eb3e6b8e9f58d223";
    hash = "sha256-6SKhRKgW8NBQoaSAp/NMq+1idlrxPOd+/HT/Ys6uQ9k=";
    name = "tork-a-openrtm_aist-release-acdb4feb245a4956256843b2eb3e6b8e9f58d223";
  });
in
{
  openrtm_aist = pkg "sha256-6SKhRKgW8NBQoaSAp/NMq+1idlrxPOd+/HT/Ys6uQ9k=" ".";
}
