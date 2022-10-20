{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "swri-robotics";
    repo = "marti_messages";
    rev = "4c0db28db7a360ee4591c9f2c11d3789cc4518fa";
    hash = "sha256-Lmn16Jlp89qpaFD4n+HQizMxO7goLIh1O+prCuFrvZI=";
    name = "swri-robotics-marti_messages-4c0db28db7a360ee4591c9f2c11d3789cc4518fa";
  });
in
{
  marti_can_msgs = pkg "sha256-SppTIXwXY4upo6hnaANwsRedXlfHrYwz7Ca2314U5e4=" "marti_can_msgs";
  marti_common_msgs = pkg "sha256-mXO1XJvyz72r0lg6I433MHZPuXYpzmPcRLZt/kVLaFs=" "marti_common_msgs";
  marti_dbw_msgs = pkg "sha256-ckMF8U8tAiucFBd8xeS5WRg5np6RQ/YNC/cM47ZEGwY=" "marti_dbw_msgs";
  marti_nav_msgs = pkg "sha256-Hr0rr1AR1FO48hk0nzIAfTjBY8796+0Dg3ESh8/LrVU=" "marti_nav_msgs";
  marti_perception_msgs = pkg "sha256-qJMpOSob1h1dXY3bVDQUnDe68xpug7/00O/itwF/i6A=" "marti_perception_msgs";
  marti_sensor_msgs = pkg "sha256-pl4elKUNMQlKvmMmEb424k+0PijDgHidzWvh2u17ikM=" "marti_sensor_msgs";
  marti_status_msgs = pkg "sha256-WOab6Xws3IHVJ5CwDSsG18Tg6oi3DAJDf7/qGt4vq+k=" "marti_status_msgs";
  marti_visualization_msgs = pkg "sha256-13J6Ao+i7FAektwRcv5uIRkVtFmocGktiaVLpKMl2gE=" "marti_visualization_msgs";
}
