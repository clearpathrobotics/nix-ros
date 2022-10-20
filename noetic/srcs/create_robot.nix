{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "AutonomyLab";
    repo = "create_robot";
    rev = "8beb0986b157ee95f3befcb52362e8367d49a78d";
    hash = "sha256-I5hxVxRLWcQ6r1bcN6659vldoisOZW9F809EcRVLvMc=";
    name = "AutonomyLab-create_robot-8beb0986b157ee95f3befcb52362e8367d49a78d";
  });
in
{
  create_bringup = pkg "sha256-mxxydbPAXY5Mt4UOf2VUZ60WGnxQ/JogfWBSSQfdyYo=" "create_bringup";
  create_description = pkg "sha256-Ve/lcNLK7DJMkHln5Kh9jnY2h8r1XAekjytukdwWGmo=" "create_description";
  create_driver = pkg "sha256-3xcIOM8ltwExWGLps5ZaOzlGtbbYyca5+2xKxf5eDwk=" "create_driver";
  create_msgs = pkg "sha256-+6k+fyHMy1+JZfvwGE0fVUitqAk8dn4LDN2w+UA6VfM=" "create_msgs";
  create_robot = pkg "sha256-VsjVyR0Q+5bcpgniu9JR5G0A/SPlG2e36vXFL42BVj4=" "create_robot";
}
