{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "fkie";
    repo = "multimaster_fkie";
    rev = "1c026e65f387ab8d09990717e67a60b27d19d7f8";
    hash = "sha256-NvvEtZGw7MrwBgJo/eApCBjRMt68uBjVBfenmStsTB0=";
    name = "fkie-multimaster_fkie-1c026e65f387ab8d09990717e67a60b27d19d7f8";
  });
in
{
  fkie_master_discovery = pkg "sha256-g25s+bFb4yvuZeFbla1Yy12HPtYHNcLY166H0RAvFWE=" "fkie_master_discovery";
  fkie_master_sync = pkg "sha256-U12q8mTnbM1BSLK75Pr+m+cRkhqOKGFlb8o0Qip53lI=" "fkie_master_sync";
  fkie_multimaster = pkg "sha256-uWl/Mztpx2SbGPRlppGTkEWNqPOZL/EVjuxqsWaWa2w=" "fkie_multimaster";
  fkie_multimaster_msgs = pkg "sha256-mtorz+QS89KA/CjmKwJTmyX/g+SJhnY8xeWYogcLHA8=" "fkie_multimaster_msgs";
  fkie_node_manager = pkg "sha256-ZTLFhfq26cfgsdU4UeMvhEeWZo/Di0qVhxw4GH2rsPA=" "fkie_node_manager";
  fkie_node_manager_daemon = pkg "sha256-B9EkUypMg8CFhsC+0YPn5Dm2fyeObkPUbIlyI2BZw3w=" "fkie_node_manager_daemon";
}
