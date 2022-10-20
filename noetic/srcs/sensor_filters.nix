{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ctu-vras";
    repo = "sensor_filters";
    rev = "c85486a3fb2613d5975d79d73af6e3602b1a2304";
    hash = "sha256-HhqYkgafyy4FAs00kSCitpO8G6El4uCdKKVYfAuU+Jo=";
    name = "ctu-vras-sensor_filters-c85486a3fb2613d5975d79d73af6e3602b1a2304";
  });
in
{
  sensor_filters = pkg "sha256-HhqYkgafyy4FAs00kSCitpO8G6El4uCdKKVYfAuU+Jo=" ".";
}
