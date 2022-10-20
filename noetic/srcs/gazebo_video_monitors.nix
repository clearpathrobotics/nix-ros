{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "nlamprian";
    repo = "gazebo_video_monitors";
    rev = "983a5bef1bab4a073b44f7b172a84250e954f924";
    hash = "sha256-Hb5FRL/IyTrdfVF1PFy+8N9wcEghsXVenhiP0F7nWeE=";
    name = "nlamprian-gazebo_video_monitors-983a5bef1bab4a073b44f7b172a84250e954f924";
  });
in
{
  gazebo_video_monitor_msgs = pkg "sha256-LR7JnPgJWnIWZRsoxeo5cw6eixleOfrbmSN4zwl4AqE=" "gazebo_video_monitor_msgs";
  gazebo_video_monitor_plugins = pkg "sha256-zDo0iRuQwCn4ps9KjXOCb4wkBFPHWd8ZyAtfTtvCA9o=" "gazebo_video_monitor_plugins";
  gazebo_video_monitor_utils = pkg "sha256-J9W2dP1gGkvTYbmGm4EpQGVjggSKfZL/ove1tBiPWt4=" "gazebo_video_monitor_utils";
  gazebo_video_monitors = pkg "sha256-ebSD+BLz4Z/jY1K01GbpULZQ3wNwP1X4AUii7q/IH1I=" "gazebo_video_monitors";
}
