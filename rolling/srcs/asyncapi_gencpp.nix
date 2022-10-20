{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "hatchbed";
    repo = "asyncapi_gencpp";
    rev = "fe77883cdc9a648ff95bb08a47c9decced393452";
    hash = "sha256-TXsjC5xNai0H4+4xM/T8NEJVsdCdpSQD5HLxYjH5sZI=";
    name = "hatchbed-asyncapi_gencpp-fe77883cdc9a648ff95bb08a47c9decced393452";
  });
in
{
  asyncapi_gencpp = pkg "sha256-TXsjC5xNai0H4+4xM/T8NEJVsdCdpSQD5HLxYjH5sZI=" ".";
}
