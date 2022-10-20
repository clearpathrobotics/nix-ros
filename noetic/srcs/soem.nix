{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "mgruhler";
    repo = "soem";
    rev = "988013c8b7a67989f6a5e69c31b738420c88afaf";
    hash = "sha256-/9ucO9kc8dhkkbN4Xz9put5lwLhvVn3PB1ZLwleJVgk=";
    name = "mgruhler-soem-988013c8b7a67989f6a5e69c31b738420c88afaf";
  });
in
{
  soem = pkg "sha256-/9ucO9kc8dhkkbN4Xz9put5lwLhvVn3PB1ZLwleJVgk=" ".";
}
