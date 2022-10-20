{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-teleop";
    repo = "teleop_tools";
    rev = "12ca6680cdba19df6b3403fd2915729514647bf6";
    hash = "sha256-ggUbNoWaBySy64xNIAR/mG1K3VwILQOSPnrfHviRhAs=";
    name = "ros-teleop-teleop_tools-12ca6680cdba19df6b3403fd2915729514647bf6";
  });
in
{
  joy_teleop = pkg "sha256-0m+cG40KsfALE20CC8bqgTbXrHL1wJ9P2cEX6hbn8iY=" "joy_teleop";
  key_teleop = pkg "sha256-fW5BSle9f8o9jEGPmX6Mc2CHyZ4kPx6ovw1OzYlmsNk=" "key_teleop";
  mouse_teleop = pkg "sha256-CTNz/n4bcxHf5Rulogx2PxI4BoBG0BVv1/vnUtiPv/0=" "mouse_teleop";
  teleop_tools = pkg "sha256-rxF0lInVOZdnjwK8B/83KYDlCq3DeQrofasuStWDBGk=" "teleop_tools";
  teleop_tools_msgs = pkg "sha256-lGgL7CJIxqg4XggSTKLwM0MoJqgopbiZCMzCr5znkVk=" "teleop_tools_msgs";
}
