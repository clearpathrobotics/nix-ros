{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "rst-tu-dortmund";
    repo = "teb_local_planner";
    rev = "f22b10ac977d4c7020ea99bfe11e9db9d2bf48d5";
    hash = "sha256-crYlzasaXABtb2NzTHKvh6yhDq7vkcJDdOG6YxeBgVY=";
    name = "rst-tu-dortmund-teb_local_planner-f22b10ac977d4c7020ea99bfe11e9db9d2bf48d5";
  });
in
{
  teb_local_planner = pkg "sha256-crYlzasaXABtb2NzTHKvh6yhDq7vkcJDdOG6YxeBgVY=" ".";
}
