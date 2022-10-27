{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "euslisp";
    repo = "EusLisp";
    rev = "9b1a896af3dad4a245d97d745130939ca2814f6b";
    hash = "sha256-6rKR2zQKIGb+6lLCh9eOnH0/O59DSclOX6DwradIScc=";
    name = "euslisp-EusLisp-9b1a896af3dad4a245d97d745130939ca2814f6b";
  });
in
{
}
