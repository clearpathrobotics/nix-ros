{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "warthog-cpr";
    repo = "warthog_simulator";
    rev = "581c2362b0b7d04c0667f317b5b996ed79f29db9";
    hash = "sha256-2fo3U1W0s3tkg/7zRqNOvtUiarXQkd2RcoFMJkYzhOc=";
    name = "warthog-cpr-warthog_simulator-581c2362b0b7d04c0667f317b5b996ed79f29db9";
  });
in
{
  warthog_gazebo = pkg "sha256-017xRXCALdFVHnrUgdtXibTLCmNjp6Bgu3hzJoecmUI=" "warthog_gazebo";
  warthog_simulator = pkg "sha256-watEaGAqkoBIUOwg+Dlqs1qRZP9G3kaG3ebP1PCK/WU=" "warthog_simulator";
}
