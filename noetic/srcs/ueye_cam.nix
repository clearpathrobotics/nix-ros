{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "anqixu";
    repo = "ueye_cam";
    rev = "3ca24995e187d49b470f758cd831dbc8ec5764bb";
    hash = "sha256-kbeecdj/Zc/y0TvCbZTrB8phTA3h/UsAVND+JjZxUZs=";
    name = "anqixu-ueye_cam-3ca24995e187d49b470f758cd831dbc8ec5764bb";
  });
in
{
  ueye_cam = pkg "sha256-kbeecdj/Zc/y0TvCbZTrB8phTA3h/UsAVND+JjZxUZs=" ".";
}
