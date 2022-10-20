{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "rst-tu-dortmund";
    repo = "control_box_rst";
    rev = "65a6fa6cce0098fffe8d975460140d3709b1e95b";
    hash = "sha256-QKaFXBU/5aM8Yxoo5VHPbhcZUhLWIZTmpA78aAqZofc=";
    name = "rst-tu-dortmund-control_box_rst-65a6fa6cce0098fffe8d975460140d3709b1e95b";
  });
in
{
  control_box_rst = pkg "sha256-QKaFXBU/5aM8Yxoo5VHPbhcZUhLWIZTmpA78aAqZofc=" ".";
}
