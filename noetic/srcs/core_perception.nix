{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "nobleo";
    repo = "core_perception";
    rev = "4434ccf9038a3b02e95b58368d4fdb2f4bebba6e";
    hash = "sha256-UvUTdeVTllYCp5g+WK93lNQPFuQLxVpzZkbEW4TvWrs=";
    name = "nobleo-core_perception-4434ccf9038a3b02e95b58368d4fdb2f4bebba6e";
  });
in
{
  points_preprocessor = pkg "sha256-Fdlyz/I/3qK4zxDvSlBWZQJbcNmGKtAceHO2BhdIfws=" "points_preprocessor";
}
