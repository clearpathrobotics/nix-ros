{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "facontidavide";
    repo = "PlotJuggler";
    rev = "b48212d9ae597cdee113cf29fb20d0407ccfbebc";
    hash = "sha256-FPXjWk4in037iDZErgRtyPaqQQqHIbfgeLh6dGOjeMo=";
    name = "facontidavide-PlotJuggler-b48212d9ae597cdee113cf29fb20d0407ccfbebc";
  });
in
{
  plotjuggler = pkg "sha256-FPXjWk4in037iDZErgRtyPaqQQqHIbfgeLh6dGOjeMo=" ".";
}
