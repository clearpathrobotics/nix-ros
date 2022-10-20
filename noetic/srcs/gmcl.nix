{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "adler-1994";
    repo = "gmcl";
    rev = "5c0326bf6b0e0d6e3ae6f223e58f7997f0a42b76";
    hash = "sha256-zyhjqJOT9qHp6Crp+xq5PwJ1RP15orEpiLNkN7OvFdc=";
    name = "adler-1994-gmcl-5c0326bf6b0e0d6e3ae6f223e58f7997f0a42b76";
  });
in
{
  gmcl = pkg "sha256-zyhjqJOT9qHp6Crp+xq5PwJ1RP15orEpiLNkN7OvFdc=" ".";
}
