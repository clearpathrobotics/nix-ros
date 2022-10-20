{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "tlsf";
    rev = "bfac39e2807c9ad6e38ebda5f2b59afc999008f9";
    hash = "sha256-P3pgQg/uxRd060gari8qq9kWwVj/eaqTb7M7fmitDVk=";
    name = "ros2-tlsf-bfac39e2807c9ad6e38ebda5f2b59afc999008f9";
  });
in
{
  tlsf = pkg "sha256-J3uDqguM6UDt7W7TOtGgqhQzGzuPTqZkX5b7Tt1Fdfg=" "tlsf";
}
