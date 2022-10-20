{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "stack-of-tasks";
    repo = "sot-core";
    rev = "ac0fb50e71c50b97c5f5a47733ddfe9b9970eb1c";
    hash = "sha256-HMk2FjEMdj+2O9smoaSWc4Am5ohn82ICuA7fLxv4RnQ=";
    name = "stack-of-tasks-sot-core-ac0fb50e71c50b97c5f5a47733ddfe9b9970eb1c";
  });
in
{
  sot-core = pkg "sha256-HMk2FjEMdj+2O9smoaSWc4Am5ohn82ICuA7fLxv4RnQ=" ".";
}
