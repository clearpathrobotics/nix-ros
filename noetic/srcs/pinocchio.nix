{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "stack-of-tasks";
    repo = "pinocchio";
    rev = "1127321ea77e99876eb3cb8293847f785f41880d";
    hash = "sha256-2IvTnFV+s28pdInkZer7desxcg6dAATHh4Z4y5gzxow=";
    name = "stack-of-tasks-pinocchio-1127321ea77e99876eb3cb8293847f785f41880d";
  });
in
{
  pinocchio = pkg "sha256-2IvTnFV+s28pdInkZer7desxcg6dAATHh4Z4y5gzxow=" ".";
}
