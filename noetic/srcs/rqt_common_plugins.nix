{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_common_plugins";
    rev = "4ee6473bda6279eb3b04c66a2d6ac8ac50d784d4";
    hash = "sha256-o3fIbUjVlVNtOlK1loGQBKVxe6bAhL8tTiMm6Cv8nW8=";
    name = "ros-visualization-rqt_common_plugins-4ee6473bda6279eb3b04c66a2d6ac8ac50d784d4";
  });
in
{
  rqt_common_plugins = pkg "sha256-o3fIbUjVlVNtOlK1loGQBKVxe6bAhL8tTiMm6Cv8nW8=" ".";
}
