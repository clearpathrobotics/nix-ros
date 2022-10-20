{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "interactive_marker_twist_server";
    rev = "cf5dc636b1b8306b947a8aac451d75bef671f02f";
    hash = "sha256-owGf16aBHdwqbV2XXeHkYortB9umzqWPDZcruEkiurk=";
    name = "ros-visualization-interactive_marker_twist_server-cf5dc636b1b8306b947a8aac451d75bef671f02f";
  });
in
{
  interactive_marker_twist_server = pkg "sha256-owGf16aBHdwqbV2XXeHkYortB9umzqWPDZcruEkiurk=" ".";
}
