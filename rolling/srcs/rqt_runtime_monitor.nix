{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_runtime_monitor";
    rev = "9b1270d4c176d57e0c9ad04257f83331d5e16034";
    hash = "sha256-7LyebmhKcj1ltMsj4LbDUxXX5v9ejuW4g4lIKitP28Q=";
    name = "ros-visualization-rqt_runtime_monitor-9b1270d4c176d57e0c9ad04257f83331d5e16034";
  });
in
{
  rqt_runtime_monitor = pkg "sha256-7LyebmhKcj1ltMsj4LbDUxXX5v9ejuW4g4lIKitP28Q=" ".";
}
