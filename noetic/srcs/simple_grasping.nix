{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "mikeferguson";
    repo = "simple_grasping";
    rev = "3c768ec06daf1022c357996fcb57a59f9ed51932";
    hash = "sha256-EGllvPx8vCsQJEPfg73wA1grw7WDAOkILY2T3nf1F6w=";
    name = "mikeferguson-simple_grasping-3c768ec06daf1022c357996fcb57a59f9ed51932";
  });
in
{
  simple_grasping = pkg "sha256-EGllvPx8vCsQJEPfg73wA1grw7WDAOkILY2T3nf1F6w=" ".";
}
