{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "nobleo";
    repo = "rviz_satellite";
    rev = "78227f6f4e5d8fd913a00c65858b5f4ec0c9a5a0";
    hash = "sha256-mFM83gVo518JgqVUL74NNyaa14QduFFA4H8TaLlQPJw=";
    name = "nobleo-rviz_satellite-78227f6f4e5d8fd913a00c65858b5f4ec0c9a5a0";
  });
in
{
  rviz_satellite = pkg "sha256-mFM83gVo518JgqVUL74NNyaa14QduFFA4H8TaLlQPJw=" ".";
}
