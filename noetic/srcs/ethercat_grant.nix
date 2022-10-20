{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "shadow-robot";
    repo = "ethercat_grant";
    rev = "8f1d26c9285b05e5af672d47933bfee1a31c1c97";
    hash = "sha256-WZ2KN2JIGpwWrwplBHK0/NvGFR+8Qb76EJzPqkcErNw=";
    name = "shadow-robot-ethercat_grant-8f1d26c9285b05e5af672d47933bfee1a31c1c97";
  });
in
{
  ethercat_grant = pkg "sha256-WZ2KN2JIGpwWrwplBHK0/NvGFR+8Qb76EJzPqkcErNw=" ".";
}
