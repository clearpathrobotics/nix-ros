{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "message_runtime";
    rev = "ebd0e5fc1b66f69c8301dfef55b31ceed83c1e15";
    hash = "sha256-PgZIIitY50WjtrBORh6LeaJSiWVPnPk6utyRHPuFEpE=";
    name = "ros-message_runtime-ebd0e5fc1b66f69c8301dfef55b31ceed83c1e15";
  });
in
{
  message_runtime = pkg "sha256-PgZIIitY50WjtrBORh6LeaJSiWVPnPk6utyRHPuFEpE=" ".";
}
