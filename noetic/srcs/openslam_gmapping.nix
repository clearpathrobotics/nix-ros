{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "openslam_gmapping";
    rev = "96e52322e51b86a2bac6363a578d7e75a0f17a08";
    hash = "sha256-moiaVz2aTZVmZYsXEsoQSGYtUY2XlGobqLIDNFU5EA4=";
    name = "ros-perception-openslam_gmapping-96e52322e51b86a2bac6363a578d7e75a0f17a08";
  });
in
{
  openslam_gmapping = pkg "sha256-moiaVz2aTZVmZYsXEsoQSGYtUY2XlGobqLIDNFU5EA4=" ".";
}
