{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "RobotWebTools";
    repo = "tf2_web_republisher";
    rev = "5370046db44f576c8cbfc863150dd7427425c2f7";
    hash = "sha256-7RDL51EXn1LtPgCdcxvVCTiFK6B26/pcQH8SL7jNFQM=";
    name = "RobotWebTools-tf2_web_republisher-5370046db44f576c8cbfc863150dd7427425c2f7";
  });
in
{
  tf2_web_republisher = pkg "sha256-7RDL51EXn1LtPgCdcxvVCTiFK6B26/pcQH8SL7jNFQM=" ".";
}
