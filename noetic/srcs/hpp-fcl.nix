{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "humanoid-path-planner";
    repo = "hpp-fcl";
    rev = "565480a3df68058bd48ae26c00b684d134f28d4b";
    hash = "sha256-8s+Ur0R2zJxI4pAw8O9GsOqfy88zF+rByepYkl+ZxZo=";
    name = "humanoid-path-planner-hpp-fcl-565480a3df68058bd48ae26c00b684d134f28d4b";
  });
in
{
  hpp-fcl = pkg "sha256-8s+Ur0R2zJxI4pAw8O9GsOqfy88zF+rByepYkl+ZxZo=" ".";
}
