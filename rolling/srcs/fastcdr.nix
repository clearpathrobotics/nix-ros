{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "eProsima";
    repo = "Fast-CDR";
    rev = "d6069f345be2e5b34534815a82c3ecfaecb37406";
    hash = "sha256-1zPCnQdyilaEuRSuj5qK1XBkpkxA3zsh19aVVeQvaJM=";
    name = "eProsima-Fast-CDR-d6069f345be2e5b34534815a82c3ecfaecb37406";
  });
in
{
  fastcdr = pkg "sha256-1zPCnQdyilaEuRSuj5qK1XBkpkxA3zsh19aVVeQvaJM=" ".";
}
