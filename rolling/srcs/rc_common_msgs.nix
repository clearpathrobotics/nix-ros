{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "roboception";
    repo = "rc_common_msgs_ros2";
    rev = "f3b0f8957a1d4694c3664580c86e6ec087b4b5e5";
    hash = "sha256-W7DXI4h0lV5gXQtZWw3IihiEThNHk+fr70T9aHseXOU=";
    name = "roboception-rc_common_msgs_ros2-f3b0f8957a1d4694c3664580c86e6ec087b4b5e5";
  });
in
{
  rc_common_msgs = pkg "sha256-W7DXI4h0lV5gXQtZWw3IihiEThNHk+fr70T9aHseXOU=" ".";
}
