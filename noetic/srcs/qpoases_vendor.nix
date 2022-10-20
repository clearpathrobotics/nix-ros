{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "autoware-ai";
    repo = "qpoases_vendor";
    rev = "ca4e3e1e1c796f4ce4e17e46ba4372607d87f87b";
    hash = "sha256-9yrFWcFYbfsO74W1XZe0+Nyeqgc/UXx5l9kBSQuoRbI=";
    name = "autoware-ai-qpoases_vendor-ca4e3e1e1c796f4ce4e17e46ba4372607d87f87b";
  });
in
{
  qpoases_vendor = pkg "sha256-9yrFWcFYbfsO74W1XZe0+Nyeqgc/UXx5l9kBSQuoRbI=" ".";
}
