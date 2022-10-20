{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "executive_smach_visualization";
    rev = "8cc7ab3a17b442423ad5a86fdbc239a3e11fab9a";
    hash = "sha256-gWe79be6OZ51m4ukV+mP/o/eS0RFSuM6ntJCejztNbE=";
    name = "ros-visualization-executive_smach_visualization-8cc7ab3a17b442423ad5a86fdbc239a3e11fab9a";
  });
in
{
  executive_smach_visualization = pkg "sha256-+AYysjmP/ZwZNvlVe2q+B8ObyGXp1JlyZbwGo3ccswY=" "executive_smach_visualization";
  smach_viewer = pkg "sha256-M/5bZwQdDY/FCAZvPFdb5+nkKcHc2Gnkq3AvylV8Mog=" "smach_viewer";
}
