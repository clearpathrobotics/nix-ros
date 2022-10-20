{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-drivers";
    repo = "joystick_drivers";
    rev = "a89bc46e68e5b5f88f0acbcc3d76f5cbc440a652";
    hash = "sha256-z2LkJpvwpMZOuYJ/dRJDOjQXmoL0ZM+URj7/SV3hMvM=";
    name = "ros-drivers-joystick_drivers-a89bc46e68e5b5f88f0acbcc3d76f5cbc440a652";
  });
in
{
  joy = pkg "sha256-LVq01bvfmA7TdJQjbrFwa17MdoQoTZj+fMTxjgRHsHY=" "joy";
  joy_linux = pkg "sha256-Ud7B/decJ0vqf/8LrcWatgTku5IS5sZ34MW8VWp23vE=" "joy_linux";
  sdl2_vendor = pkg "sha256-yK9/I8H81uj13ica+FzxQlDpD4xNsbe3+OtP4FWAv1M=" "sdl2_vendor";
  spacenav = pkg "sha256-EsSdLhPMwhTgF6N4yyBvEtGNGKBjVtk5a+7/LopDwIA=" "spacenav";
  wiimote = pkg "sha256-tmTuJsuid0a70I48V0kdL+odWCPg4/C6sdR519Ur1LE=" "wiimote";
  wiimote_msgs = pkg "sha256-l532Gw7OATTIrTbXCaWAe0yfIgPFDhA6R7cmsdiSRas=" "wiimote_msgs";
}
