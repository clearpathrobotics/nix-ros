{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "eclipse-cyclonedds";
    repo = "cyclonedds";
    rev = "0e2cd3e303be2171dd0e4fc685cc5031f70b0f52";
    hash = "sha256-amk/4eEdTdT6OU5TIuSmrq9IKLa6sDI20yxqwymQQns=";
    name = "eclipse-cyclonedds-cyclonedds-0e2cd3e303be2171dd0e4fc685cc5031f70b0f52";
  });
in
{
  cyclonedds = pkg "sha256-amk/4eEdTdT6OU5TIuSmrq9IKLa6sDI20yxqwymQQns=" ".";
}
