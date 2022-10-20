{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "tier4";
    repo = "osqp_vendor";
    rev = "b005203dcf857abd4e467fd77f0070274e04346e";
    hash = "sha256-NwGgpUAQsw0OSiD6N3XoB7HcHl1f78V0ZemFnIArutg=";
    name = "tier4-osqp_vendor-b005203dcf857abd4e467fd77f0070274e04346e";
  });
in
{
  osqp_vendor = pkg "sha256-NwGgpUAQsw0OSiD6N3XoB7HcHl1f78V0ZemFnIArutg=" ".";
}
