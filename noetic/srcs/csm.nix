{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "AndreaCensi";
    repo = "csm";
    rev = "dff25579014ee156fe6b1209b56f9f2ee3e56ad1";
    hash = "sha256-MZ8c3RoGRbqZTnsUmuprRzEHASPJm7JZtb+royKZOe0=";
    name = "AndreaCensi-csm-dff25579014ee156fe6b1209b56f9f2ee3e56ad1";
  });
in
{
  csm = pkg "sha256-MZ8c3RoGRbqZTnsUmuprRzEHASPJm7JZtb+royKZOe0=" ".";
}
