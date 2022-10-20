{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-visualization";
    repo = "visualization_tutorials";
    rev = "dd1b79e191d5b2b3f143cb5ee12749711b2a0889";
    hash = "sha256-kd0UAODSb0kvAxpxvNCKBTyVxGWME6V2DoZoWk0/c/c=";
    name = "ros-visualization-visualization_tutorials-dd1b79e191d5b2b3f143cb5ee12749711b2a0889";
  });
in
{
  interactive_marker_tutorials = pkg "sha256-CMYArf8BJB5qR4AxXJZmzo9eiQSY6t55ohUgzZxBwSw=" "interactive_marker_tutorials";
  librviz_tutorial = pkg "sha256-TKur4lyHX/Vdp4cng27KhoozeG2l2BNVLs+nSnyskTM=" "librviz_tutorial";
  rviz_plugin_tutorials = pkg "sha256-MDXpM5+qhroZVT8IH4eRXwXnRr7AiFHabQqkTkXyQPw=" "rviz_plugin_tutorials";
  rviz_python_tutorial = pkg "sha256-BajLY+7XMN/WJRWiqjA5T7EL1HD/zD9nt7UgZLNmkXk=" "rviz_python_tutorial";
  visualization_marker_tutorials = pkg "sha256-7sP3o7JKtm627P+eQt7IK2gDOd5zvSGybBNTn3HWrpo=" "visualization_marker_tutorials";
  visualization_tutorials = pkg "sha256-MgKisPyjSzNvCy1lQEYIKuIuoAkHBybI101zTcPD4cs=" "visualization_tutorials";
}
