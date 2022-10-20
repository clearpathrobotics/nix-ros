{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "roboception";
    repo = "rc_reason_clients_ros2";
    rev = "a117081ce0bdfef74b8f11ddf7f78f34d7146195";
    hash = "sha256-aRKxz8L0sFLbOrDHUGBzsWIAFQqPeZ+CEp5FHOggS6w=";
    name = "roboception-rc_reason_clients_ros2-a117081ce0bdfef74b8f11ddf7f78f34d7146195";
  });
in
{
  rc_reason_clients = pkg "sha256-AaBc9ZO/ssaj55UhTl5ODnUfnkbvUBaWmoNfgw5TWn4=" "rc_reason_clients";
  rc_reason_msgs = pkg "sha256-FWe29dAS+fY/9FC6pRN7WNPRX8h4+F9C5240ZxrL1Fo=" "rc_reason_msgs";
}
