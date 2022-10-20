{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "mikeferguson";
    repo = "code_coverage";
    rev = "65598ec3b9ad55dfdebd22198d5fda1cbc0a155d";
    hash = "sha256-XAXqSKp6+rU6+5BpiCV0vxVo0rljJv5WF7Hg/wPfiyo=";
    name = "mikeferguson-code_coverage-65598ec3b9ad55dfdebd22198d5fda1cbc0a155d";
  });
in
{
  code_coverage = pkg "sha256-XAXqSKp6+rU6+5BpiCV0vxVo0rljJv5WF7Hg/wPfiyo=" ".";
}
