{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "squarerobot";
    repo = "bagger";
    rev = "550a41003b1ef17e088d2cbe524f0e82e2f2c551";
    hash = "sha256-CoGjA8WQid8XGMnqiINkIxPjtZMxk6yw5bRTsNpoIj0=";
    name = "squarerobot-bagger-550a41003b1ef17e088d2cbe524f0e82e2f2c551";
  });
in
{
  bagger = pkg "sha256-CoGjA8WQid8XGMnqiINkIxPjtZMxk6yw5bRTsNpoIj0=" ".";
}
