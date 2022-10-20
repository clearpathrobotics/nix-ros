{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ament";
    repo = "google_benchmark_vendor";
    rev = "02fae4286918876d19274557fa855bbbd7aa89f8";
    hash = "sha256-UdLziCYKcyhrb0C1S/szv0MCBIT+j0PeFqVDJHxQqYM=";
    name = "ament-google_benchmark_vendor-02fae4286918876d19274557fa855bbbd7aa89f8";
  });
in
{
  google_benchmark_vendor = pkg "sha256-UdLziCYKcyhrb0C1S/szv0MCBIT+j0PeFqVDJHxQqYM=" ".";
}
