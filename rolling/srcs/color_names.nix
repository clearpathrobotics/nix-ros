{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "OUXT-Polaris";
    repo = "color_names-release";
    rev = "0d6de39400aba05f1f2282ef9ff8c43190d9c4b4";
    hash = "sha256-iuBFWudF1CiYPGl1Hewfw6HuCk9oLLQ9TfF2YTu79yg=";
    name = "OUXT-Polaris-color_names-release-0d6de39400aba05f1f2282ef9ff8c43190d9c4b4";
  });
in
{
}
