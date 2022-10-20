{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "hatchbed";
    repo = "log_view";
    rev = "8e9276e8d1855eadd4a83a2be45e253b52cd4f50";
    hash = "sha256-b/rhPPa2uo5QugxlncLA1lb7pkiknSB0KdtcxEEV/G4=";
    name = "hatchbed-log_view-8e9276e8d1855eadd4a83a2be45e253b52cd4f50";
  });
in
{
  log_view = pkg "sha256-b/rhPPa2uo5QugxlncLA1lb7pkiknSB0KdtcxEEV/G4=" ".";
}
