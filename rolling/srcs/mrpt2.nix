{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "MRPT";
    repo = "mrpt";
    rev = "f599b8e0a30cafe0eefcb63945a59b71a73b4a60";
    hash = "sha256-cFxQGw+Ewo9bUXcXyHREJI0eYE7/+Lt0TTtde2TtEMU=";
    name = "MRPT-mrpt-f599b8e0a30cafe0eefcb63945a59b71a73b4a60";
  });
in
{
  mrpt2 = pkg "sha256-cFxQGw+Ewo9bUXcXyHREJI0eYE7/+Lt0TTtde2TtEMU=" ".";
}
