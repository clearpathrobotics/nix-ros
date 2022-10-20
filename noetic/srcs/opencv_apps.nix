{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-perception";
    repo = "opencv_apps";
    rev = "74fad3a6f7d52ee6de61cfc1461fdfaebf12534f";
    hash = "sha256-YX7Vto7sIjYwT28kKKBE8OHhM4kud0Yia3mri0XteTY=";
    name = "ros-perception-opencv_apps-74fad3a6f7d52ee6de61cfc1461fdfaebf12534f";
  });
in
{
  opencv_apps = pkg "sha256-YX7Vto7sIjYwT28kKKBE8OHhM4kud0Yia3mri0XteTY=" ".";
}
