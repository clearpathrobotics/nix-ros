{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "taskflow";
    repo = "taskflow";
    rev = "a0328bf93ec5be3b2f79f46ac6f575a50c79e56b";
    hash = "sha256-1k9D54+jh6e6ODtr1Ru76Abv9CFED6KS8DfyV9Nh9Rk=";
    name = "taskflow-taskflow-a0328bf93ec5be3b2f79f46ac6f575a50c79e56b";
  });
in
{
  Taskflow = pkg "sha256-1k9D54+jh6e6ODtr1Ru76Abv9CFED6KS8DfyV9Nh9Rk=" ".";
}
