{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ubuntu-robotics";
    repo = "nodl";
    rev = "6beb84dc3198ecc20ebf18c04313ef6f81e29c00";
    hash = "sha256-ATe39Ge15/409i52Mzp39PK2SYTQc1nK7FHUuz8+SaI=";
    name = "ubuntu-robotics-nodl-6beb84dc3198ecc20ebf18c04313ef6f81e29c00";
  });
in
{
  nodl_python = pkg "sha256-jjnIwsJIx7FAumBQ6A6hOWypHnCgqTKp73opTHpfSUU=" "nodl_python";
  ros2nodl = pkg "sha256-kyXuLAyq4qBSfPdoCjfxx6v3Jl0VoHxuRR+YQKXY+C4=" "ros2nodl";
}
