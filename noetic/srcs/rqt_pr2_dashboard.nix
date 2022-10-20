{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "pr2";
    repo = "rqt_pr2_dashboard";
    rev = "86b29df50f84a6f99f24bdb5ef8d214487bcc01e";
    hash = "sha256-bisoHBu0EaQh1HOGsCdLI01lSHcAlQS3rNVAAvSaemo=";
    name = "pr2-rqt_pr2_dashboard-86b29df50f84a6f99f24bdb5ef8d214487bcc01e";
  });
in
{
  rqt_pr2_dashboard = pkg "sha256-bisoHBu0EaQh1HOGsCdLI01lSHcAlQS3rNVAAvSaemo=" ".";
}
