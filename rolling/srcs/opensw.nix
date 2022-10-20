{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "hatchbed";
    repo = "opensw";
    rev = "0125bc6a6dbbfcc2c37bf498a8a7a88b88567c01";
    hash = "sha256-0okQdyaCrWARQ/QcTLSRzodhppQKnYJhAzdur+DHlb8=";
    name = "hatchbed-opensw-0125bc6a6dbbfcc2c37bf498a8a7a88b88567c01";
  });
in
{
  opensw = pkg "sha256-0okQdyaCrWARQ/QcTLSRzodhppQKnYJhAzdur+DHlb8=" ".";
}
