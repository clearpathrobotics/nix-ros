{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "nobleo";
    repo = "xsens_mti_driver";
    rev = "58e656666faa678e90bc68333d4527f21b85259a";
    hash = "sha256-qyGR4QtDEKsRDE21ddydoez1H4OU2gczvMISt6uPgmk=";
    name = "nobleo-xsens_mti_driver-58e656666faa678e90bc68333d4527f21b85259a";
  });
in
{
  xsens_mti_driver = pkg "sha256-qyGR4QtDEKsRDE21ddydoez1H4OU2gczvMISt6uPgmk=" ".";
}
