{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "taskflow";
    repo = "taskflow";
    rev = "a6c62442d27ff066318d31ca1ffbca04eb3317b1";
    hash = "sha256-dnFeem5KfMava481x0BNhiSX1xktCqww4pMNnEGGI6c=";
    name = "taskflow-taskflow-a6c62442d27ff066318d31ca1ffbca04eb3317b1";
  });
in
{
  Taskflow = pkg "sha256-dnFeem5KfMava481x0BNhiSX1xktCqww4pMNnEGGI6c=" ".";
}
