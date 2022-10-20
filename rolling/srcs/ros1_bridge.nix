{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "ros1_bridge";
    rev = "b9f1739fd84fc877a8ec6e5c416b65aa2d782f89";
    hash = "sha256-ZHZiDW7mr5ZLzXAP/hxcRJ4kFPzgH8V2g65N4hm8V4w=";
    name = "ros2-ros1_bridge-b9f1739fd84fc877a8ec6e5c416b65aa2d782f89";
  });
in
{
  ros1_bridge = pkg "sha256-ZHZiDW7mr5ZLzXAP/hxcRJ4kFPzgH8V2g65N4hm8V4w=" ".";
}
