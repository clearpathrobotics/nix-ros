{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "AutonomyLab";
    repo = "libcreate";
    rev = "d75d41c63843581cfd113fd8ceac976d65bc06b4";
    hash = "sha256-AzwKiRv39Vno7uDE5tOzMGFzrt1FlGEP0vJiNtnvWgk=";
    name = "AutonomyLab-libcreate-d75d41c63843581cfd113fd8ceac976d65bc06b4";
  });
in
{
  libcreate = pkg "sha256-AzwKiRv39Vno7uDE5tOzMGFzrt1FlGEP0vJiNtnvWgk=" ".";
}
