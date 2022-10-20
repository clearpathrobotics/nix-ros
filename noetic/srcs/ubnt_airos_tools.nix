{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "peci1";
    repo = "ubnt_airos_tools";
    rev = "09db3c77b4372843b1847fa63c028f45e3b3bd39";
    hash = "sha256-H+ccLukZAsvAUznsxYrEULJHVeOs5OSQp0+idv1O+v8=";
    name = "peci1-ubnt_airos_tools-09db3c77b4372843b1847fa63c028f45e3b3bd39";
  });
in
{
  ubnt_airos_tools = pkg "sha256-H+ccLukZAsvAUznsxYrEULJHVeOs5OSQp0+idv1O+v8=" ".";
}
