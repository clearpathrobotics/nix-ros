{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "at-wat";
    repo = "neonavigation";
    rev = "fb0f36e4256a71a8c22f0e675b5cd7c43f1aa0f4";
    hash = "sha256-XZCR9hkT8xCAe36ZYvV5Fmwhw5ldQQ+rpsI/gzEppTY=";
    name = "at-wat-neonavigation-fb0f36e4256a71a8c22f0e675b5cd7c43f1aa0f4";
  });
in
{
  costmap_cspace = pkg "sha256-VpzHxrkahOvJAccBnftLsK14u09wf6O2FmqStShhCS8=" "costmap_cspace";
  joystick_interrupt = pkg "sha256-x1rNsBXFrRxeLi3M9VXjIXJ5Tl7YVKpCsK0ys2yMpSs=" "joystick_interrupt";
  map_organizer = pkg "sha256-/oZyuKYvwr68UAGho8IJshYRyt8NRfmrjxt5dJ7lZT8=" "map_organizer";
  neonavigation = pkg "sha256-xSj74/cvvrPbNpLLNK1aoPfsyEMigodiZC0gx0CUDKs=" "neonavigation";
  neonavigation_common = pkg "sha256-4CueW5GxCaNQW3RrP0KBC1m60z8BzL5rGDf/n8x+XFg=" "neonavigation_common";
  neonavigation_launch = pkg "sha256-OCRjH4hG3QIGPDcj9jZnPu0YBZ8fE2vFJ+rKhIIpX0Y=" "neonavigation_launch";
  obj_to_pointcloud = pkg "sha256-cBP2A8T7m47XKHCB70qNSoWICH63Ktow5D+EyImDm/k=" "obj_to_pointcloud";
  planner_cspace = pkg "sha256-BC3o9WXxdLOkoBToCq9O7uk9TIA4QefVX5/psG5yexc=" "planner_cspace";
  safety_limiter = pkg "sha256-U7NB8KIUelfvdo+1j+2v3n0G3wU4D4D+6/zWS84G85M=" "safety_limiter";
  track_odometry = pkg "sha256-QhmPSo6VpDbvOvrsbW6JcAu3EwcWEOb3FU6ZZWUXhs0=" "track_odometry";
  trajectory_tracker = pkg "sha256-6TOviyV0EAjcjYAKzUAwqeGyOjMEKFcOz6t5yTqMjxo=" "trajectory_tracker";
}
