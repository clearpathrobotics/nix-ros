{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ament";
    repo = "ament_package";
    rev = "122af3e498dc7387639af0a2e745f49f3160f6e2";
    hash = "sha256-vAqxkOGZPVhhi3cj3SNFTPjWy+y3wedjnD9rLMLXjLU=";
    name = "ament-ament_package-122af3e498dc7387639af0a2e745f49f3160f6e2";
  });
in
{
  ament_package = pkg "sha256-vAqxkOGZPVhhi3cj3SNFTPjWy+y3wedjnD9rLMLXjLU=" ".";
}
