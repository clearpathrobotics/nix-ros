{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "SICKAG";
    repo = "libsick_ldmrs";
    rev = "d99166c98d3171eb5c896c2770ba6fd007b0ab9a";
    hash = "sha256-iNlMxKhHYarP04fZHIL+Mugu6/2wPnvNAS0C77aem3Y=";
    name = "SICKAG-libsick_ldmrs-d99166c98d3171eb5c896c2770ba6fd007b0ab9a";
  });
in
{
  libsick_ldmrs = pkg "sha256-iNlMxKhHYarP04fZHIL+Mugu6/2wPnvNAS0C77aem3Y=" ".";
}
