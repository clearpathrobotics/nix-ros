{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros-sports";
    repo = "soccer_interfaces";
    rev = "623f4bf49f5cd887850bdef206f0f36a2e9214b2";
    hash = "sha256-4MW0gaY6gQ7AFmTvUV7vT8OJ/8ue/NX9qs1Am0zEnQ4=";
    name = "ros-sports-soccer_interfaces-623f4bf49f5cd887850bdef206f0f36a2e9214b2";
  });
in
{
  soccer_geometry_msgs = pkg "sha256-0M53qiOitZCLcIbD4Oh+1malghRCFtNk++rmragZYJg=" "soccer_geometry_msgs";
  soccer_interfaces = pkg "sha256-vk/EmhgP6OQYIn59GYk85ZeW+QHa7gYOhl7TcQ9T4p4=" "soccer_interfaces";
  soccer_model_msgs = pkg "sha256-BKW5qyG7LxyoCe1T8gyJKUiSCNAxrXBgmmzr17XmLwU=" "soccer_model_msgs";
  soccer_vision_2d_msgs = pkg "sha256-uEc3/YLvC5vjUJJWlrw4cFc44uc3fsDszyR/N8adSJM=" "soccer_vision_2d_msgs";
  soccer_vision_3d_msgs = pkg "sha256-Xh1gHzJZ7E10kbdohvRovH/+RP/9/JqMHuXBjQgYFoQ=" "soccer_vision_3d_msgs";
  soccer_vision_attribute_msgs = pkg "sha256-kne9VeA5cVtLI1cd5i9nD338Z11EdYoA28JFBWwWUD4=" "soccer_vision_attribute_msgs";
}
