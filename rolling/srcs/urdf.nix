{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "urdf";
    rev = "633be51b8a1899f2939257f88ef7617327ffa625";
    hash = "sha256-sEOsqHjqsm/ck9Og26AzaVeF6QuZshQMTgOITKA9HdQ=";
    name = "ros2-urdf-633be51b8a1899f2939257f88ef7617327ffa625";
  });
in
{
  urdf = pkg "sha256-VUNRrd3a5o6btx+j1Rmw/8izQy9YYDJ0CSpYKvVjVPA=" "urdf";
  urdf_parser_plugin = pkg "sha256-qGVxnTO2zMB997Q41/SdA6+A4kdNdGR3Ax5QdSyM+5w=" "urdf_parser_plugin";
}
