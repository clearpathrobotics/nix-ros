{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "LORD-MicroStrain";
    repo = "ntrip_client";
    rev = "8a8b61eca3db76b961a2bd9f581ccb7576033f25";
    hash = "sha256-G8ytf7RTPHSnwJQZhrS9Gmz2qnNRjclSrs/87n76vos=";
    name = "LORD-MicroStrain-ntrip_client-8a8b61eca3db76b961a2bd9f581ccb7576033f25";
  });
in
{
  ntrip_client = pkg "sha256-G8ytf7RTPHSnwJQZhrS9Gmz2qnNRjclSrs/87n76vos=" ".";
}
