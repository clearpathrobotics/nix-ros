{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "executive_smach_visualization";
    rev = "2f7a4c874dfb833f4feeab2484a632d0aa6af007";
    hash = "sha256-5N8MObtXnYjU9Y2+0Y1MZHWIlTsjm0/g+87hS42UWCQ=";
    name = "ros-visualization-executive_smach_visualization-2f7a4c874dfb833f4feeab2484a632d0aa6af007";
  });
in
{
  executive_smach_visualization = pkg "sha256-+AYysjmP/ZwZNvlVe2q+B8ObyGXp1JlyZbwGo3ccswY=" "executive_smach_visualization";
  smach_viewer = pkg "sha256-hDajlxlt+mbTcqOsb9K+twpQcu0NcY93jHtmRlPOG5A=" "smach_viewer";
}
