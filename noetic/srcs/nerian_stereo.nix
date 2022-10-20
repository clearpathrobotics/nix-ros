{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "nerian-vision";
    repo = "nerian_stereo";
    rev = "01d55d4aa14733c279a40135b8efbbfd5ec42fe1";
    hash = "sha256-u4PiJFfaiM7qA0hiHbdEFfBGU0lABcvKUD66V5Y7GBE=";
    name = "nerian-vision-nerian_stereo-01d55d4aa14733c279a40135b8efbbfd5ec42fe1";
  });
in
{
  nerian_stereo = pkg "sha256-u4PiJFfaiM7qA0hiHbdEFfBGU0lABcvKUD66V5Y7GBE=" ".";
}
