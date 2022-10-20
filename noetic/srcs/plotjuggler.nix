{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "facontidavide";
    repo = "PlotJuggler";
    rev = "8c1ae51dfe966faa4af9c69b5284a7613e6c83f9";
    hash = "sha256-B2lAfx/mV8tQrAp2kZ3o2y6RUPzSh+8JUpbV+PZaFQM=";
    name = "facontidavide-PlotJuggler-8c1ae51dfe966faa4af9c69b5284a7613e6c83f9";
  });
in
{
  plotjuggler = pkg "sha256-B2lAfx/mV8tQrAp2kZ3o2y6RUPzSh+8JUpbV+PZaFQM=" ".";
}
