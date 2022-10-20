{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "swri-robotics";
    repo = "marti_messages";
    rev = "9f0e68d00293bf152cc903953aaa6655b66ec218";
    hash = "sha256-OGDWGzvdsuWbmByW9qS3klnsfrU7Q1eozjiMl42ScMg=";
    name = "swri-robotics-marti_messages-9f0e68d00293bf152cc903953aaa6655b66ec218";
  });
in
{
  marti_can_msgs = pkg "sha256-2fTU3MddM9ASjVcv6Fwatjjebv28DYhBkCJ9UOhX5Cs=" "marti_can_msgs";
  marti_common_msgs = pkg "sha256-TI0Ie7rtNnkvYK3slDpl+GjkGFxmt507eP0RWKz7tpw=" "marti_common_msgs";
  marti_dbw_msgs = pkg "sha256-z1nXObjFzu3QKvhPcXiZu+BhqrY35fT1awgvIj24CJY=" "marti_dbw_msgs";
  marti_introspection_msgs = pkg "sha256-3OYAQY8YbYECRrHj3mZz9BbLZlFpac/75UO+P5tP910=" "marti_introspection_msgs";
  marti_nav_msgs = pkg "sha256-bH1lf6wdHr8UzyN8D5wvFa9kp6zcQqH0CQl6o3vndDI=" "marti_nav_msgs";
  marti_perception_msgs = pkg "sha256-FRJDo+QsX1dQsncDtoCqByBOfhQUTXOnqSnReh5icJk=" "marti_perception_msgs";
  marti_sensor_msgs = pkg "sha256-eJV9Q5YsLGE4R3+bKfBRlyCsbaa4n97hANLD2o4F3AI=" "marti_sensor_msgs";
  marti_status_msgs = pkg "sha256-Lsyg4lPiardAzAd/3HPGNN1v7NsylkDRiOJ7PeVaUzQ=" "marti_status_msgs";
  marti_visualization_msgs = pkg "sha256-d9GigcJGKb6uWYzGyUGq9R5cYF43Wj8ZNM1SHracDpY=" "marti_visualization_msgs";
}
