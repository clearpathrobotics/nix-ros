{ pkgSrc, fetchFromBitbucket }:
let
  pkg = pkgSrc (fetchFromBitbucket {
    owner = "DataspeedInc";
    repo = "oxford_gps_eth";
    rev = "c35b558bdbd4180f97ef77762ab635a74701ec97";
    hash = "sha256-rTGXv7umYQG6TUL9oYf2xz/9iHZZzV+bHXLxcdWdQQw=";
    name = "DataspeedInc-oxford_gps_eth-c35b558bdbd4180f97ef77762ab635a74701ec97";
  });
in
{
  oxford_gps_eth = pkg "sha256-rTGXv7umYQG6TUL9oYf2xz/9iHZZzV+bHXLxcdWdQQw=" ".";
}
