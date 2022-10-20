{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "open-rmf";
    repo = "rmf_utils";
    rev = "6c132def42c756ecf02129d5e28609c627eb4715";
    hash = "sha256-UeSVi7DZ/mZf4Q5wXXAaXr1DowiuPWJlsTKUoMpGjYk=";
    name = "open-rmf-rmf_utils-6c132def42c756ecf02129d5e28609c627eb4715";
  });
in
{
  rmf_utils = pkg "sha256-0J61gdqsqdGIb+/2E3zFOq/Z3qjwXkncR96hBB8a8S0=" "rmf_utils";
}
