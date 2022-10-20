{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "rqt_bag";
    rev = "2f8f684f6d675afb6074a8604a6428649380fe05";
    hash = "sha256-5Jikkc+D3KKeQTL6BovWnNvQr+Mqnu4WuXauvsi2Rgo=";
    name = "ros-visualization-rqt_bag-2f8f684f6d675afb6074a8604a6428649380fe05";
  });
in
{
  rqt_bag = pkg "sha256-5Wjy2g40XKxG61Vp+bC+GmXTaXeofb7qeJz8j32Ynks=" "rqt_bag";
  rqt_bag_plugins = pkg "sha256-tmG2lu4DWSrcFlD0AUPbB+kxcVFt5j5aaTIIBsxVEE4=" "rqt_bag_plugins";
}
