{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ubi-agni";
    repo = "agni_tf_tools";
    rev = "8d75c49e7610e2d5f4da10bc415d7bcda8c07a28";
    hash = "sha256-ANse47fGab2q9ILqK5dUHib1zRpQOvNxAKBNsp6zy10=";
    name = "ubi-agni-agni_tf_tools-8d75c49e7610e2d5f4da10bc415d7bcda8c07a28";
  });
in
{
  agni_tf_tools = pkg "sha256-ANse47fGab2q9ILqK5dUHib1zRpQOvNxAKBNsp6zy10=" ".";
}
