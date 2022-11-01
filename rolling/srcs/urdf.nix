{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "urdf";
    rev = "4f38dd9c86fea25d0e74953d5c19b8253fe05969";
    hash = "sha256-izzp1qUQXB6zYhnxDp3oh6gDyVCTL6kJkWW4eF/vOc4=";
    name = "ros2-urdf-4f38dd9c86fea25d0e74953d5c19b8253fe05969";
  });
in
{
  urdf = pkg "sha256-haJkVf0yiccAgAXdAcIcyj+/a/kmELjoHmyFsq71E2o=" "urdf";
  urdf_parser_plugin = pkg "sha256-qGVxnTO2zMB997Q41/SdA6+A4kdNdGR3Ax5QdSyM+5w=" "urdf_parser_plugin";
}
