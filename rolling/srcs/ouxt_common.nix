{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "OUXT-Polaris";
    repo = "ouxt_common";
    rev = "87f436281227587d34009de6125ec7561a7ed346";
    hash = "sha256-TfxAG4dFWISxUSrLx5jXnNMU9slypboTD1PUjlKSpr4=";
    name = "OUXT-Polaris-ouxt_common-87f436281227587d34009de6125ec7561a7ed346";
  });
in
{
  ouxt_common = pkg "sha256-4nyGy7HVcpb5Cb/zBa9+kz8o7aXZyGqY2Fdy17Xd9ZY=" "ouxt_common";
  ouxt_lint_common = pkg "sha256-CzvbzrJWL16B2/c63ryLS008hT4dSu50P4AhU+lsHpQ=" "ouxt_lint_common";
}
