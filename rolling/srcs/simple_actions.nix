{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "DLu";
    repo = "simple_actions";
    rev = "283a2b184295470a89f08238f0098702e3d341fe";
    hash = "sha256-NwJn4jspMkn8bZdj3z4bwQmkm017B0FXkjiGFfIl+cY=";
    name = "DLu-simple_actions-283a2b184295470a89f08238f0098702e3d341fe";
  });
in
{
  simple_actions = pkg "sha256-NwJn4jspMkn8bZdj3z4bwQmkm017B0FXkjiGFfIl+cY=" ".";
}
