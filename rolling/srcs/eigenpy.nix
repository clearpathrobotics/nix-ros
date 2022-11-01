{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "stack-of-tasks";
    repo = "eigenpy";
    rev = "fa4d8c62158eddbc0a5c598aae9167b6c847e40c";
    hash = "sha256-mOG2kxznxke+NcxGD5dLBneLHJ1ysRLJSKu7ngjxvdc=";
    name = "stack-of-tasks-eigenpy-fa4d8c62158eddbc0a5c598aae9167b6c847e40c";
  });
in
{
  eigenpy = pkg "sha256-mOG2kxznxke+NcxGD5dLBneLHJ1ysRLJSKu7ngjxvdc=" ".";
}
