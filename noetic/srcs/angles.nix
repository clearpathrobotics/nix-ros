{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "angles";
    rev = "2392b18b4101cf2e81b77e89e3535959ad03d1ca";
    hash = "sha256-mX8fEZaiXRLFUJWyavzBVEsc7tbk6tib8Oiq0KaNYjE=";
    name = "ros-angles-2392b18b4101cf2e81b77e89e3535959ad03d1ca";
  });
in
{
  angles = pkg "sha256-VUgtrryJ94zztCyY9uGDxW+aPZh5wGKC+I+JL57tUhQ=" "angles";
}
