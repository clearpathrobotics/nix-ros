{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "hatchbed";
    repo = "hatchbed_common";
    rev = "42fa1bcc12ce564b2f8578d70e3250b36d2b81f8";
    hash = "sha256-JxWbhA55TZkvF+DcL3QRWmLxbFIqzhBcXloAwb2PCfM=";
    name = "hatchbed-hatchbed_common-42fa1bcc12ce564b2f8578d70e3250b36d2b81f8";
  });
in
{
  hatchbed_common = pkg "sha256-JxWbhA55TZkvF+DcL3QRWmLxbFIqzhBcXloAwb2PCfM=" ".";
}
