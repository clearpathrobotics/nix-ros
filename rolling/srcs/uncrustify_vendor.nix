{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ament";
    repo = "uncrustify_vendor";
    rev = "3fb804ea8e5d20a4031d6a5b45c6823759176962";
    hash = "sha256-5Icjrr7e/+P2a/LdkWD50uxr5daT5M0SG04htoqkgPg=";
    name = "ament-uncrustify_vendor-3fb804ea8e5d20a4031d6a5b45c6823759176962";
  });
in
{
  uncrustify_vendor = pkg "sha256-5Icjrr7e/+P2a/LdkWD50uxr5daT5M0SG04htoqkgPg=" ".";
}
