{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "stonier";
    repo = "sophus";
    rev = "b424dde9afd8d28365b836a1f327e59c1e1cb4be";
    hash = "sha256-ccZcQpcsKq8dmR17kC/OAqWUZfSLxvZBir0mVbiEku0=";
    name = "stonier-sophus-b424dde9afd8d28365b836a1f327e59c1e1cb4be";
  });
in
{
  sophus = pkg "sha256-ccZcQpcsKq8dmR17kC/OAqWUZfSLxvZBir0mVbiEku0=" ".";
}
