{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "kobuki-base";
    repo = "kobuki_velocity_smoother";
    rev = "728dd45ff827a9aa31af9d128d6a0e14f5114d80";
    hash = "sha256-19jqJ1zM47aR4wzO/JHTjYDZxFzhfqLYqdCtEpqEGyA=";
    name = "kobuki-base-kobuki_velocity_smoother-728dd45ff827a9aa31af9d128d6a0e14f5114d80";
  });
in
{
  kobuki_velocity_smoother = pkg "sha256-19jqJ1zM47aR4wzO/JHTjYDZxFzhfqLYqdCtEpqEGyA=" ".";
}
