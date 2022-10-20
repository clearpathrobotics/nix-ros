{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "aws-robotics";
    repo = "aws-robomaker-small-warehouse-world";
    rev = "ee0af733315e78432408c3cd98d378ecee5f767c";
    hash = "sha256-bMYgLcTRb5UvNDZS4HmtCbd1SRpRfQypQmT4SJPbONY=";
    name = "aws-robotics-aws-robomaker-small-warehouse-world-ee0af733315e78432408c3cd98d378ecee5f767c";
  });
in
{
  aws_robomaker_small_warehouse_world = pkg "sha256-bMYgLcTRb5UvNDZS4HmtCbd1SRpRfQypQmT4SJPbONY=" ".";
}
