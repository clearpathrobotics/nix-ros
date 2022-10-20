{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "clearpathrobotics";
    repo = "lockmount_description";
    rev = "b400b19b4563fd78694caabd5dda57968a2c150c";
    hash = "sha256-UhkveAixaJxET+Ouw9OokzvcftgWkr885EgsIxud8us=";
    name = "clearpathrobotics-lockmount_description-b400b19b4563fd78694caabd5dda57968a2c150c";
  });
in
{
  fath_pivot_mount_description = pkg "sha256-UhkveAixaJxET+Ouw9OokzvcftgWkr885EgsIxud8us=" ".";
}
