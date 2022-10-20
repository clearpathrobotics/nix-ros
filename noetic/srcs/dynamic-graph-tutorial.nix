{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "stack-of-tasks";
    repo = "dynamic-graph-tutorial";
    rev = "8b7f30d50545098792ad09c9df8a47e851a61205";
    hash = "sha256-6gZ6ceOtSW3ULsb7fHCg/C2i2acP9PFGdJc4G7gX59c=";
    name = "stack-of-tasks-dynamic-graph-tutorial-8b7f30d50545098792ad09c9df8a47e851a61205";
  });
in
{
  dynamic-graph-tutorial = pkg "sha256-6gZ6ceOtSW3ULsb7fHCg/C2i2acP9PFGdJc4G7gX59c=" ".";
}
