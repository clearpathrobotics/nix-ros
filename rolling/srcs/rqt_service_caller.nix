{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_service_caller";
    rev = "c3b14ff5b1929fe0d389e888a6740ab8f5bd0458";
    hash = "sha256-2XhRmFJ8b7jagZ0zf8uEnSlqm84xUSQfJ0HmZuAz7YY=";
    name = "ros-visualization-rqt_service_caller-c3b14ff5b1929fe0d389e888a6740ab8f5bd0458";
  });
in
{
  rqt_service_caller = pkg "sha256-2XhRmFJ8b7jagZ0zf8uEnSlqm84xUSQfJ0HmZuAz7YY=" ".";
}
