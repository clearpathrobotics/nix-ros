{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "tinyxml_vendor";
    rev = "b3d738a67d1dd95fea92df44e7cdd9fb7046d7fb";
    hash = "sha256-Nu4qfaOy6X+DDo9qaDyc2LftGnnBxK/EJnqym/RW6FI=";
    name = "ros2-tinyxml_vendor-b3d738a67d1dd95fea92df44e7cdd9fb7046d7fb";
  });
in
{
  tinyxml_vendor = pkg "sha256-Nu4qfaOy6X+DDo9qaDyc2LftGnnBxK/EJnqym/RW6FI=" ".";
}
