{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "teshanshanuka";
    repo = "cmvision";
    rev = "83130763db34a6edf9554ba72071ec6e8e532067";
    hash = "sha256-2X1jHVj8xpmqRQsGksRRtOCv4xV9iKaJpEYZe1YVL8s=";
    name = "teshanshanuka-cmvision-83130763db34a6edf9554ba72071ec6e8e532067";
  });
in
{
  cmvision = pkg "sha256-2X1jHVj8xpmqRQsGksRRtOCv4xV9iKaJpEYZe1YVL8s=" ".";
}
