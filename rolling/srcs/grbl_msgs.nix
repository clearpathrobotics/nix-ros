{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "flynneva";
    repo = "grbl_msgs";
    rev = "f42ce6222e1be6792aa0f47802d13be6bbd1a81b";
    hash = "sha256-cjvc4arr+Z92IcwzqZryuU4FC2MY+FNpA+6JBe0dhiE=";
    name = "flynneva-grbl_msgs-f42ce6222e1be6792aa0f47802d13be6bbd1a81b";
  });
in
{
  grbl_msgs = pkg "sha256-cjvc4arr+Z92IcwzqZryuU4FC2MY+FNpA+6JBe0dhiE=" ".";
}
