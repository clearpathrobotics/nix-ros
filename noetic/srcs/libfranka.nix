{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "frankaemika";
    repo = "libfranka";
    rev = "f3b8d775a9c847cab32684c8a316f67867761674";
    hash = "sha256-MBbtWffx1QevMMMMkVPFf44YWUhC7EvUDaZMq+tSHOo=";
    name = "frankaemika-libfranka-f3b8d775a9c847cab32684c8a316f67867761674";
  });
in
{
  libfranka = pkg "sha256-MBbtWffx1QevMMMMkVPFf44YWUhC7EvUDaZMq+tSHOo=" ".";
}
