{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "fkanehiro";
    repo = "openhrp3";
    rev = "2e96aa88941b3118356c9cca7d25e31bf523d7f5";
    hash = "sha256-MAWD6XS5B2LVtj+iVP8T7ZR5gggBg5wTCRfAYNGAUfU=";
    name = "fkanehiro-openhrp3-2e96aa88941b3118356c9cca7d25e31bf523d7f5";
  });
in
{
  openhrp3 = pkg "sha256-MAWD6XS5B2LVtj+iVP8T7ZR5gggBg5wTCRfAYNGAUfU=" ".";
}
