{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "septentrio-gnss";
    repo = "septentrio_gnss_driver";
    rev = "1d7dda42e0f174470b084a5d39bb3ee285ab18fa";
    hash = "sha256-dwmP3m0Ia5vEqSwhgpxBkISiv1TvVbKnx1nQtZFNp/A=";
    name = "septentrio-gnss-septentrio_gnss_driver-1d7dda42e0f174470b084a5d39bb3ee285ab18fa";
  });
in
{
  septentrio_gnss_driver = pkg "sha256-dwmP3m0Ia5vEqSwhgpxBkISiv1TvVbKnx1nQtZFNp/A=" ".";
}
