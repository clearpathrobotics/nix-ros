{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "SICKAG";
    repo = "libsick_ldmrs";
    rev = "ba055c72270f6037d8e503ed0abf165df9ba1ebc";
    hash = "sha256-LCJo+gIokGTXbuCgHrf/y335/GPNSd0fxA5quxTj3rk=";
    name = "SICKAG-libsick_ldmrs-ba055c72270f6037d8e503ed0abf165df9ba1ebc";
  });
in
{
  libsick_ldmrs = pkg "sha256-LCJo+gIokGTXbuCgHrf/y335/GPNSd0fxA5quxTj3rk=" ".";
}
