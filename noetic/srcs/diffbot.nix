{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-mobile-robots";
    repo = "diffbot";
    rev = "e7b6c8c5206235a338ef15e20084630793813a4f";
    hash = "sha256-vrwnehAl9w+0XOMRDyH1ZLHuJE10hoL3b4yioiVlHyg=";
    name = "ros-mobile-robots-diffbot-e7b6c8c5206235a338ef15e20084630793813a4f";
  });
in
{
  diffbot_base = pkg "sha256-YQYkf3oeVqW13nddeLj0vmRl5m9I9DKZXSLDfS8KQXM=" "diffbot_base";
  diffbot_bringup = pkg "sha256-OnBkzEidOCNC6DB6aAA06MHp/Q9wTqhzJNgMIcETZjc=" "diffbot_bringup";
  diffbot_control = pkg "sha256-ocP/MlfCsMVyJXl9x9thHsgjSBoCU5ys12Bp7U/FXes=" "diffbot_control";
  diffbot_description = pkg "sha256-fO1dtO9Ovl3OCYOnS2QlH17xaSSrmqzeda9kDIo7f+Q=" "diffbot_description";
  diffbot_gazebo = pkg "sha256-29/WafwJSKsISjxGKytdioQistVlep6oYk2WfJCesj0=" "diffbot_gazebo";
  diffbot_mbf = pkg "sha256-2R85w8ridvqhdpFHfdbsC80dWCZx7TipOdSetgAKITI=" "diffbot_mbf";
  diffbot_msgs = pkg "sha256-uHos9tBdpSf/LXaRyocsP+xCT/KyBooCo4Hg40fe52g=" "diffbot_msgs";
  diffbot_navigation = pkg "sha256-IsXICj+MV3+q7H7i0NV5Dpr1nGPMY3TaE9KdhQrWqsg=" "diffbot_navigation";
  diffbot_robot = pkg "sha256-EM2zhRUCrfaG7+lZPz3NUfYrrWvj4u7SUyx8UxxKNRs=" "diffbot_robot";
  diffbot_slam = pkg "sha256-Bbnl8Q0eSh2Uy4mOoQqmo7zNVz7KdRgO+tIZF5NEfFk=" "diffbot_slam";
}
