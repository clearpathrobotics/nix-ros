{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "cyberbotics";
    repo = "webots_ros2";
    rev = "1e395e1f7c976780bb936bb6b19ae02df81a0759";
    hash = "sha256-mH8ig1124QavItr6ebnJlA+OAFk17yJjbPvp+6kSq6M=";
    name = "cyberbotics-webots_ros2-1e395e1f7c976780bb936bb6b19ae02df81a0759";
  });
in
{
  webots_ros2 = pkg "sha256-q0lRLf6CvmnPcYCiWU4B9/6ZlgLCTDRg0gwxlWaMUFI=" "webots_ros2";
  webots_ros2_control = pkg "sha256-C1ahd2o6OujkdrNDvni+o2PQ+sszlOQWTOxT1joGuaU=" "webots_ros2_control";
  webots_ros2_core = pkg "sha256-xgZvX7FRpAblUJti3ZT2iE1E0ohUE8LwLNpll2wrzGY=" "webots_ros2_core";
  webots_ros2_driver = pkg "sha256-EyazSqv5sH6HbmviGRS48ZYr/nSulceOaGvKFCzC4rg=" "webots_ros2_driver";
  webots_ros2_epuck = pkg "sha256-4GZBdw4W0ATuU/2wRSHuL7EzKPWzqJ0Cfk+qMhAECoA=" "webots_ros2_epuck";
  webots_ros2_importer = pkg "sha256-btmRnIrlFc6HXzEd+bVRo5BjNqxM+lfDw4D0rELDGao=" "webots_ros2_importer";
  webots_ros2_mavic = pkg "sha256-3gW3W9QGHG5nzCgQ4DFBTI4gtls7GL3+VZFNkjIvXE0=" "webots_ros2_mavic";
  webots_ros2_msgs = pkg "sha256-eaqBMc834z6ekZiNla/9niy9/YdF5b0e1r+T9st+24s=" "webots_ros2_msgs";
  webots_ros2_tesla = pkg "sha256-6r9OZQ6w9MS5Xl1FXeA/TUaP/+YI5SmcN1ICobg3vEw=" "webots_ros2_tesla";
  webots_ros2_tests = pkg "sha256-N1XRJpBmlVy5bqYC8lzBimI82yVr1ZWQTDhIOCzpTX4=" "webots_ros2_tests";
  webots_ros2_tiago = pkg "sha256-1KOWV14/kSFf8M9xfojww+dy/xlw7LkDiG/5zvRFD9k=" "webots_ros2_tiago";
  webots_ros2_turtlebot = pkg "sha256-J80QH6ZzR6eX98EJhLG32smEwUjdTPNL7ZqJH2aQcTw=" "webots_ros2_turtlebot";
  webots_ros2_universal_robot = pkg "sha256-i1xxMMhRvz8RYqnVppFpSWey7hE4PZLlLXsAg5LKZ8g=" "webots_ros2_universal_robot";
}
