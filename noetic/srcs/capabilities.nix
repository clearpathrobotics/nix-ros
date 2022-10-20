{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "osrf";
    repo = "capabilities";
    rev = "df54fa8c70103cd5c05c2f1b6839abcf29d8b0dc";
    hash = "sha256-Gfyjp8V+c2TwDJKsUKsrHOFnEO3gw8oZvmbYi2z5nmQ=";
    name = "osrf-capabilities-df54fa8c70103cd5c05c2f1b6839abcf29d8b0dc";
  });
in
{
  capabilities = pkg "sha256-Gfyjp8V+c2TwDJKsUKsrHOFnEO3gw8oZvmbYi2z5nmQ=" ".";
}
