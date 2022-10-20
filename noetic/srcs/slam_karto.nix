{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "slam_karto";
    rev = "7b5a348d1372818cbabceca78f32d49bf7454a40";
    hash = "sha256-RE8aKlH6f5UocPGQotNaivu1NidW9MtxoGgzfcm1LCg=";
    name = "ros-perception-slam_karto-7b5a348d1372818cbabceca78f32d49bf7454a40";
  });
in
{
  slam_karto = pkg "sha256-RE8aKlH6f5UocPGQotNaivu1NidW9MtxoGgzfcm1LCg=" ".";
}
