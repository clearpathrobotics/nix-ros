{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "bond_core";
    rev = "ad4a49c124fb4c6f23c3e0d2ca0264ebfacd3eee";
    hash = "sha256-wZQK3Rm5rnJRC7M78T29MlYZDENBph+pAxtmp0iyGSA=";
    name = "ros-bond_core-ad4a49c124fb4c6f23c3e0d2ca0264ebfacd3eee";
  });
in
{
  bond = pkg "sha256-c8CNFiNhffaL6ikNaC25RLYzu6olhlMYnXu9X6CoK+U=" "bond";
  bond_core = pkg "sha256-EA4f2CqUNq+ZLOettwEaG01DA+oOf6FFtQqVi7RDQOI=" "bond_core";
  bondcpp = pkg "sha256-wy3kCL86JrjYj9NSdQSoElNk2Av00ERKHmxi5+16hNU=" "bondcpp";
  smclib = pkg "sha256-F73Murx7nsDKLtgPHJ5EAjpH67fZ7LZMHDas6Up4fk0=" "smclib";
  test_bond = pkg "sha256-fHi349x6QDk41rEy2eRf220CkcMmPbS/gLmad/CmxGQ=" "test_bond";
}
