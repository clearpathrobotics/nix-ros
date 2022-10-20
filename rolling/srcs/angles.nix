{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "angles";
    rev = "f6b75c7c95b6c037ed0589678504c4a48082f20b";
    hash = "sha256-zS7fYf5sL73uLfcTjMGAqbwHVLLg4898cbFTvudqIx4=";
    name = "ros-angles-f6b75c7c95b6c037ed0589678504c4a48082f20b";
  });
in
{
  angles = pkg "sha256-l4xIXnIMoWmTEkIubTtt1g/NZdI+H9zvYXd0izyPAKw=" "angles";
}
