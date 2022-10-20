{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "MarkNaeem";
    repo = "move_base_sequence";
    rev = "a61dc5656a58d779aee6f4b537bbaf77f90529e0";
    hash = "sha256-Z1AD2ISHP7a2iG5G4ZFtR+VjNVe52c9yMNnO12hHY5A=";
    name = "MarkNaeem-move_base_sequence-a61dc5656a58d779aee6f4b537bbaf77f90529e0";
  });
in
{
  move_base_sequence = pkg "sha256-Z1AD2ISHP7a2iG5G4ZFtR+VjNVe52c9yMNnO12hHY5A=" ".";
}
