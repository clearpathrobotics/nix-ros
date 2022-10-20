{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "SoftServeSAG";
    repo = "teleop_legged_robots";
    rev = "d71d102784cab2c60706b7cf55e066723f42dc0f";
    hash = "sha256-GovZZl02UMR9IrB3FLI6NG1IUIB8zBvBaCxrZTJzQSQ=";
    name = "SoftServeSAG-teleop_legged_robots-d71d102784cab2c60706b7cf55e066723f42dc0f";
  });
in
{
  teleop_legged_robots = pkg "sha256-GovZZl02UMR9IrB3FLI6NG1IUIB8zBvBaCxrZTJzQSQ=" ".";
}
