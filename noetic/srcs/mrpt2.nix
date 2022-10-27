{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "mrpt";
    repo = "mrpt";
    rev = "de389f16f2b35b8d68782cbfe8afa342fbccdeea";
    hash = "sha256-R/a674kXCR5MY2t72uYnAWjzdT3SyMgDjZdS6eO5QwI=";
    name = "mrpt-mrpt-de389f16f2b35b8d68782cbfe8afa342fbccdeea";
  });
in
{
  mrpt2 = pkg "sha256-R/a674kXCR5MY2t72uYnAWjzdT3SyMgDjZdS6eO5QwI=" ".";
}
