{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "PR2";
    repo = "pr2_navigation";
    rev = "d9f235b4fa274c4358233b13456f516917e4517e";
    hash = "sha256-tjHjnQEPOjapgODUqA9gPFI/hOikhY3BtTDPp7IVOQc=";
    name = "PR2-pr2_navigation-d9f235b4fa274c4358233b13456f516917e4517e";
  });
in
{
  laser_tilt_controller_filter = pkg "sha256-vQaN+HjCznMECl7VSW+CFWkyPx5JRYBP54rn1VgyA7c=" "laser_tilt_controller_filter";
  pr2_move_base = pkg "sha256-BAlM6aOk8/rkTlV560A5sGh9L0iYj+J5ZymkYVmpSCE=" "pr2_move_base";
  pr2_navigation = pkg "sha256-ADufJZlATh/7pCug+4DjvKA+JcvOsm+Viw7dofgnMc4=" "pr2_navigation";
  pr2_navigation_config = pkg "sha256-bMn9VcwYqay7xML98s/g9q+Cx9R0GYB06xEf2sWbbks=" "pr2_navigation_config";
  pr2_navigation_global = pkg "sha256-EEqUxxS9N6Ihr99TB/fgc0pyBYCWfNPIBv7LDZQZaJo=" "pr2_navigation_global";
  pr2_navigation_local = pkg "sha256-eBxKe6yfzMwmDScEj39tmeUP8dWU3/RgBOQI4Sm4loY=" "pr2_navigation_local";
  pr2_navigation_perception = pkg "sha256-Dn3cerqjOe0D5Lwd+kMRAETaApKeThwtzZfVRpSB1kg=" "pr2_navigation_perception";
  pr2_navigation_self_filter = pkg "sha256-Q22//5JS5Ny7GzYKViCf9ggZZgefWHntXWwU1R5KdI0=" "pr2_navigation_self_filter";
  pr2_navigation_slam = pkg "sha256-UWgmVwUV+UzhUKdh7PrBNG4ylV6P/xIf22KHhYusC3o=" "pr2_navigation_slam";
  pr2_navigation_teleop = pkg "sha256-sKpG3E89Zd2u4W0Wwo7ZoNifNLQQ1aBsr5iNttwaRjc=" "pr2_navigation_teleop";
  semantic_point_annotator = pkg "sha256-sn0qAZw5+Suir9pxcQBuZ4N0fM61yHC8q/uGdxO+HgA=" "semantic_point_annotator";
}
