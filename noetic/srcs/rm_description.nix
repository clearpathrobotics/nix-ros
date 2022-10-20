{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "rm-controls";
    repo = "rm_description";
    rev = "a4b31828bf964e491d3ba5a731d12c1213562feb";
    hash = "sha256-5spshNXNlSuj3rVY2noeQvFRG4ZrTvWZU76xJIkGqXc=";
    name = "rm-controls-rm_description-a4b31828bf964e491d3ba5a731d12c1213562feb";
  });
in
{
  rm_description = pkg "sha256-5spshNXNlSuj3rVY2noeQvFRG4ZrTvWZU76xJIkGqXc=" ".";
}
