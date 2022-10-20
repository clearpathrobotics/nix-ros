{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "wjwwood";
    repo = "serial";
    rev = "69e0372cf0d3796e84ce9a09aff1d74496f68720";
    hash = "sha256-TVZ6GqOfNrsUXoznkZbLaOrD/csSyFeUtZozcTl8jQg=";
    name = "wjwwood-serial-69e0372cf0d3796e84ce9a09aff1d74496f68720";
  });
in
{
  serial = pkg "sha256-TVZ6GqOfNrsUXoznkZbLaOrD/csSyFeUtZozcTl8jQg=" ".";
}
