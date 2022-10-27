{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "tier4";
    repo = "osqp_vendor";
    rev = "1ea3682dacc08bd05d301098b202e74bd6416251";
    hash = "sha256-I6jhthmRppj6fiDd1M+bbW8W/bsR5/0ur5UWcf4/ZGQ=";
    name = "tier4-osqp_vendor-1ea3682dacc08bd05d301098b202e74bd6416251";
  });
in
{
  osqp_vendor = pkg "sha256-I6jhthmRppj6fiDd1M+bbW8W/bsR5/0ur5UWcf4/ZGQ=" ".";
}
