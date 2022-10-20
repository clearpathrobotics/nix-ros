{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "gl_dependency";
    rev = "337fcfc30d1fca48f97a3c0a57678a14ec3fdb85";
    hash = "sha256-hNI+U6Qqwx9Qw6aAHs4HMKkuCItvWlBkHjNW+Yesouk=";
    name = "ros-visualization-gl_dependency-337fcfc30d1fca48f97a3c0a57678a14ec3fdb85";
  });
in
{
  gl_dependency = pkg "sha256-hNI+U6Qqwx9Qw6aAHs4HMKkuCItvWlBkHjNW+Yesouk=" ".";
}
