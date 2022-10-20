{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "roslisp";
    rev = "559355a8d695e34e6dedae071a9af2c065411687";
    hash = "sha256-I94DUqHqoWf7lzUcld5vttIH/b3gjtfpLdc2Y85Wsfo=";
    name = "ros-roslisp-559355a8d695e34e6dedae071a9af2c065411687";
  });
in
{
  roslisp = pkg "sha256-I94DUqHqoWf7lzUcld5vttIH/b3gjtfpLdc2Y85Wsfo=" ".";
}
