{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ROBOTIS-GIT";
    repo = "hls_lfcd_lds_driver";
    rev = "448574816d0aa5a5ee3df9c2122140aa4c0d9e80";
    hash = "sha256-r84LjIEGPCXRJ+D3SAiNPeusa2f+WtwJSvOfs8wyJQ4=";
    name = "ROBOTIS-GIT-hls_lfcd_lds_driver-448574816d0aa5a5ee3df9c2122140aa4c0d9e80";
  });
in
{
  hls_lfcd_lds_driver = pkg "sha256-r84LjIEGPCXRJ+D3SAiNPeusa2f+WtwJSvOfs8wyJQ4=" ".";
}
