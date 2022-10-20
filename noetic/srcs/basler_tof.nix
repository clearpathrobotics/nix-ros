{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "uos";
    repo = "basler_tof";
    rev = "b96f5071e3459b8738d6e92b9b923c90eed746ef";
    hash = "sha256-Htt/viffhS/hCzzK4EZjRPOix6fnliGpUZgZB/pAKXQ=";
    name = "uos-basler_tof-b96f5071e3459b8738d6e92b9b923c90eed746ef";
  });
in
{
  basler_tof = pkg "sha256-Htt/viffhS/hCzzK4EZjRPOix6fnliGpUZgZB/pAKXQ=" ".";
}
