{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "luxonis";
    repo = "depthai-core";
    rev = "490e3b2842a8b1c6ae6a4b4a1d21ee66fec88d96";
    hash = "sha256-4qGPXjE62bJFlrphfCprULnQcX9wCfKtE73/CcWXg7A=";
    name = "luxonis-depthai-core-490e3b2842a8b1c6ae6a4b4a1d21ee66fec88d96";
  });
in
{
  depthai = pkg "sha256-4qGPXjE62bJFlrphfCprULnQcX9wCfKtE73/CcWXg7A=" ".";
}
