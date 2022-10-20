{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "UniversalRobots";
    repo = "Universal_Robots_Client_Library";
    rev = "1d9b9750128b31081f57ecf466f8acc7e7538f60";
    hash = "sha256-ndaBIkqSuKVpRZl1D+LCTePdWHWKFv06Nfh9rOktGZk=";
    name = "UniversalRobots-Universal_Robots_Client_Library-1d9b9750128b31081f57ecf466f8acc7e7538f60";
  });
in
{
  ur_client_library = pkg "sha256-ndaBIkqSuKVpRZl1D+LCTePdWHWKFv06Nfh9rOktGZk=" ".";
}
