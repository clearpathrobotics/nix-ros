{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "roboception";
    repo = "rc_genicam_api";
    rev = "3b147e3536422b9162aa367f0a6d1a61647dfb60";
    hash = "sha256-yG8xA8pLNAsxYFQqMu+1CYAJSITA7QkpKy02cF8bvGc=";
    name = "roboception-rc_genicam_api-3b147e3536422b9162aa367f0a6d1a61647dfb60";
  });
in
{
  rc_genicam_api = pkg "sha256-yG8xA8pLNAsxYFQqMu+1CYAJSITA7QkpKy02cF8bvGc=" ".";
}
