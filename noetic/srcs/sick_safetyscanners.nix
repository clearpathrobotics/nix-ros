{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "SICKAG";
    repo = "sick_safetyscanners";
    rev = "d4afb8383d9265d62fbaed782f0b5079e2fbe55c";
    hash = "sha256-CAUKerSPdj/N7dU+ip4CebEnho6Qs8BZLpVQAtXbk0U=";
    name = "SICKAG-sick_safetyscanners-d4afb8383d9265d62fbaed782f0b5079e2fbe55c";
  });
in
{
  sick_safetyscanners = pkg "sha256-CAUKerSPdj/N7dU+ip4CebEnho6Qs8BZLpVQAtXbk0U=" ".";
}
