{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "at-wat";
    repo = "hokuyo3d";
    rev = "667c1f350b6cf08ac95b9b8fee2ff67b71f89678";
    hash = "sha256-VX5H5oSxtyu8oKrIpWuZsrM1qugIwZNYcoXZFKJZROs=";
    name = "at-wat-hokuyo3d-667c1f350b6cf08ac95b9b8fee2ff67b71f89678";
  });
in
{
  hokuyo3d = pkg "sha256-VX5H5oSxtyu8oKrIpWuZsrM1qugIwZNYcoXZFKJZROs=" ".";
}
