{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "MRPT";
    repo = "mrpt";
    rev = "8caa3c385255a548261ab233c319372afc17c997";
    hash = "sha256-goNDla7MbFYeOO8M/gJF7GDPp9sLJf1Sf+2G00WKj9o=";
    name = "MRPT-mrpt-8caa3c385255a548261ab233c319372afc17c997";
  });
in
{
  mrpt2 = pkg "sha256-goNDla7MbFYeOO8M/gJF7GDPp9sLJf1Sf+2G00WKj9o=" ".";
}
