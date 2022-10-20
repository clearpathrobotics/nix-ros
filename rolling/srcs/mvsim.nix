{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "MRPT";
    repo = "mvsim";
    rev = "44033c9c1987edd37a5c4d68718bc5cda1616e5b";
    hash = "sha256-535T2mDPitAuS0Ikz8fQZMWWQ2slWqKF7DrRe0L1IUc=";
    name = "MRPT-mvsim-44033c9c1987edd37a5c4d68718bc5cda1616e5b";
  });
in
{
  mvsim = pkg "sha256-535T2mDPitAuS0Ikz8fQZMWWQ2slWqKF7DrRe0L1IUc=" ".";
}
