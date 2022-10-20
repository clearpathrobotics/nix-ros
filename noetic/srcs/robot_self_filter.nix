{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "pr2";
    repo = "robot_self_filter";
    rev = "b24715a991fb3e077086aa1db14fee4e85ace9cc";
    hash = "sha256-8dD78wjsZCQWHNk3r+3FbJfv7tB9T1CMksdN/DDMffM=";
    name = "pr2-robot_self_filter-b24715a991fb3e077086aa1db14fee4e85ace9cc";
  });
in
{
  robot_self_filter = pkg "sha256-8dD78wjsZCQWHNk3r+3FbJfv7tB9T1CMksdN/DDMffM=" ".";
}
