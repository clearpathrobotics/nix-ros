{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "introlab";
    repo = "find-object";
    rev = "f7c38f91d0b076f365592974ff75972aa668b7f1";
    hash = "sha256-HuXLzYzT6otxptQB2uEVBdNyMxWzNv2z2KoY72pa21g=";
    name = "introlab-find-object-f7c38f91d0b076f365592974ff75972aa668b7f1";
  });
in
{
  find_object_2d = pkg "sha256-HuXLzYzT6otxptQB2uEVBdNyMxWzNv2z2KoY72pa21g=" ".";
}
