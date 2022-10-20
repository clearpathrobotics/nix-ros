{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "InnopolisAero";
    repo = "inno_vtol_dynamics";
    rev = "8c3d6c24ddf760b3a5992ad5f982230aab56e45e";
    hash = "sha256-TmLrvSMUIpUGshplM7yRdjl6yfttWaDLYowUXyoMo/Y=";
    name = "InnopolisAero-inno_vtol_dynamics-8c3d6c24ddf760b3a5992ad5f982230aab56e45e";
  });
in
{
  innopolis_vtol_dynamics = pkg "sha256-TmLrvSMUIpUGshplM7yRdjl6yfttWaDLYowUXyoMo/Y=" ".";
}
