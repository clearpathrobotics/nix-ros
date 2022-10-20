{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros";
    repo = "catkin";
    rev = "ff31d451ce1c68d47bc058a4693aad6c0fb63a43";
    hash = "sha256-EFB7zG1/By4FpFeHEhFJhRGLUHkpOHt/83bOqLYDpTQ=";
    name = "ros-catkin-ff31d451ce1c68d47bc058a4693aad6c0fb63a43";
  });
in
{
  catkin = pkg "sha256-EFB7zG1/By4FpFeHEhFJhRGLUHkpOHt/83bOqLYDpTQ=" ".";
}
