{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "OUXT-Polaris";
    repo = "quaternion_operation";
    rev = "71f2822c36f5d9815762f94a9064e5084c2efc0d";
    hash = "sha256-1oekud3Kag9qUaoef6yjvOWhcXaDmmfZyOKO6pj890E=";
    name = "OUXT-Polaris-quaternion_operation-71f2822c36f5d9815762f94a9064e5084c2efc0d";
  });
in
{
  quaternion_operation = pkg "sha256-1oekud3Kag9qUaoef6yjvOWhcXaDmmfZyOKO6pj890E=" ".";
}
