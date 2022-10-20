{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "UniversalRobots";
    repo = "Universal_Robots_Client_Library";
    rev = "bbbae030125dd178a6ee3499a3c8c483e560ad7e";
    hash = "sha256-cDXiHqhpwTVuNhdajLv4Q4iROBtjfMdL6ktmY8n8534=";
    name = "UniversalRobots-Universal_Robots_Client_Library-bbbae030125dd178a6ee3499a3c8c483e560ad7e";
  });
in
{
  ur_client_library = pkg "sha256-cDXiHqhpwTVuNhdajLv4Q4iROBtjfMdL6ktmY8n8534=" ".";
}
