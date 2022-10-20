{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-controls";
    repo = "ign_ros_control";
    rev = "d3ef3254aeacc42defe35898c0f39fb04ad3918f";
    hash = "sha256-5/TKLinkGZzP+5z7li7mFt5AM4ay5hTEBi+js/hY62s=";
    name = "ros-controls-ign_ros_control-d3ef3254aeacc42defe35898c0f39fb04ad3918f";
  });
in
{
  ign_ros_control = pkg "sha256-a/aUw6rYap9Ta6WTTfGx5tOUiDbQdcjqKxwgvoswwQY=" "ign_ros_control";
  ign_ros_control_demos = pkg "sha256-27lDC8Xd9aMHtWckQlYwgWYwyyQQ9MBvOo2pnhiBcFQ=" "ign_ros_control_demos";
}
