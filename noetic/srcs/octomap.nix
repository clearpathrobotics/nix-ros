{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "OctoMap";
    repo = "octomap";
    rev = "92a9f14cafa5f567c47b58cbe91137c9a6ba1b0c";
    hash = "sha256-jgV/esSmuZnoVqWi6V6apya2bzEyKCCwkofVw+5eY98=";
    name = "OctoMap-octomap-92a9f14cafa5f567c47b58cbe91137c9a6ba1b0c";
  });
in
{
  octomap-distribution = pkg "sha256-jgV/esSmuZnoVqWi6V6apya2bzEyKCCwkofVw+5eY98=" ".";
}
