{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "astuff";
    repo = "avt_vimba_camera";
    rev = "56a49a1bd94982f67acdccc18692bdcd3e81ff8e";
    hash = "sha256-KaPyWlCjsfkTn8XpUIwleztVREzG+anGopC8kbNkPkU=";
    name = "astuff-avt_vimba_camera-56a49a1bd94982f67acdccc18692bdcd3e81ff8e";
  });
in
{
  avt_vimba_camera = pkg "sha256-IgWs4AI5ZGULgwNXipfNsvD69CYJqqxYee0/c9nD2I8=" "avt_vimba_camera";
  avt_vimba_camera_msgs = pkg "sha256-uTbtVOS9bF981DtV565PD9OPhKa9xFo7gKiU6bBj3qo=" "avt_vimba_camera_msgs";
}
