{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "crigroup";
    repo = "handeye";
    rev = "452a1cc272f62c213e038e513d2bd72a418532a0";
    hash = "sha256-kW1F4HoqSxpP7KaIs0U6sAuHZXhCHQQvm6GrquXFGQ4=";
    name = "crigroup-handeye-452a1cc272f62c213e038e513d2bd72a418532a0";
  });
in
{
  handeye = pkg "sha256-kW1F4HoqSxpP7KaIs0U6sAuHZXhCHQQvm6GrquXFGQ4=" ".";
}
