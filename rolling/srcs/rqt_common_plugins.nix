{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_common_plugins";
    rev = "63bc8c69dd0dba067137e27a61636b705ae8d4e9";
    hash = "sha256-rSJ8tB78EOgjtaHw8wleVvW+Rx9+z5d0IAznXj0aKmg=";
    name = "ros-visualization-rqt_common_plugins-63bc8c69dd0dba067137e27a61636b705ae8d4e9";
  });
in
{
  rqt_common_plugins = pkg "sha256-rSJ8tB78EOgjtaHw8wleVvW+Rx9+z5d0IAznXj0aKmg=" ".";
}
