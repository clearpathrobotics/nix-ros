{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "open-rmf";
    repo = "rmf_task";
    rev = "99ec3bf8fff2f6ef287a1ecdddfff157e055136c";
    hash = "sha256-+ZY1kbBYAzZv/Q/x2vn406ZqafX06LpWEc+Ffj66Zus=";
    name = "open-rmf-rmf_task-99ec3bf8fff2f6ef287a1ecdddfff157e055136c";
  });
in
{
  rmf_task = pkg "sha256-xbIuHYU+88cnbBGP7NcZP4tomgLWxNGSJuRqyE3kHRM=" "rmf_task";
  rmf_task_sequence = pkg "sha256-US8cPib7cqCNyF2imJglb6iIX3UWkk14TZb6qea4MFY=" "rmf_task_sequence";
}
