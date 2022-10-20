{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "open-rmf";
    repo = "menge_vendor";
    rev = "37c888d8f6f56615efd14f1d354f381d8787c166";
    hash = "sha256-pwDvm+FUMHbvtumRly3aV2QEDQ0UxPN8GlgjCe8TOZE=";
    name = "open-rmf-menge_vendor-37c888d8f6f56615efd14f1d354f381d8787c166";
  });
in
{
  menge_vendor = pkg "sha256-pwDvm+FUMHbvtumRly3aV2QEDQ0UxPN8GlgjCe8TOZE=" ".";
}
