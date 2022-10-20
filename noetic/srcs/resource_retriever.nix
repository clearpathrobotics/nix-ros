{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "resource_retriever";
    rev = "82a70328b83e915711ffc213f90f6f8d2836fd8b";
    hash = "sha256-3lgELVCPlXE3y8t2/h247oO8rwiqJ+AR3HG0gHgpNN8=";
    name = "ros-resource_retriever-82a70328b83e915711ffc213f90f6f8d2836fd8b";
  });
in
{
  resource_retriever = pkg "sha256-3lgELVCPlXE3y8t2/h247oO8rwiqJ+AR3HG0gHgpNN8=" ".";
}
