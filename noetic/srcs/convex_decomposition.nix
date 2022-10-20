{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "convex_decomposition";
    rev = "b722eb51bf3918e089b20de33c3ee8cc34bf69f3";
    hash = "sha256-Q9QyyHSja/Tpq5RS/4X+XZdr2AF5/EaqtSNDnJfCTrw=";
    name = "ros-convex_decomposition-b722eb51bf3918e089b20de33c3ee8cc34bf69f3";
  });
in
{
  convex_decomposition = pkg "sha256-Q9QyyHSja/Tpq5RS/4X+XZdr2AF5/EaqtSNDnJfCTrw=" ".";
}
