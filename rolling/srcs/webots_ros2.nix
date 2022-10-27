{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "cyberbotics";
    repo = "webots_ros2";
    rev = "43cffc034697405b08874f5343970f6bca36d9d1";
    hash = "sha256-GgPZ9BM5mDa0kPqmf+Sl6kayTSeePXWVRBq+ckSfIyc=";
    name = "cyberbotics-webots_ros2-43cffc034697405b08874f5343970f6bca36d9d1";
  });
in
{
  webots_ros2 = pkg "sha256-bR/bD17LokYjgUsnSj8ndySyGzb+NvSPvOKoaG878DI=" "webots_ros2";
  webots_ros2_control = pkg "sha256-fBQeCvSYTc3ZIFy3pimKJpHQZUCBsgbtbz4au4B2yM4=" "webots_ros2_control";
  webots_ros2_core = pkg "sha256-mOBMU8QH309JbF6l49Kul8uktp8DYQ8GJj4jVhGuP2E=" "webots_ros2_core";
  webots_ros2_driver = pkg "sha256-EYkm1DKCMhasxtdQ2h5NI+r/EnnD/bvbPo3izoU2UHk=" "webots_ros2_driver";
  webots_ros2_epuck = pkg "sha256-14Dh/zObpI2luQYBnLgAzumbjlhCWUSY3wkkzp5t2AE=" "webots_ros2_epuck";
  webots_ros2_importer = pkg "sha256-/eIG81Iplz6mYUx+jjHtHTHa2o4nBgRoWzFe8+wYHwo=" "webots_ros2_importer";
  webots_ros2_mavic = pkg "sha256-bwgOhS/SnM9FTc6eeS8VbUi66A0kmNVW1ylojnD6sYM=" "webots_ros2_mavic";
  webots_ros2_msgs = pkg "sha256-nXxS22vzjsIhTIB0tMsivd3PvGfJK1KOsm83oPgPpSM=" "webots_ros2_msgs";
  webots_ros2_tesla = pkg "sha256-DddFQxFwJACmOTsFkYitXpoSxpWHnmqgxh+Qbp6o8lM=" "webots_ros2_tesla";
  webots_ros2_tests = pkg "sha256-K2zRouLlttj5XIGOppvMEK+xwRRXsT/1Nfah0NowMK0=" "webots_ros2_tests";
  webots_ros2_tiago = pkg "sha256-Vqdt6p3cWFn/Xa98mn/AK+/s1mESZJGMam3zuyHkbB8=" "webots_ros2_tiago";
  webots_ros2_turtlebot = pkg "sha256-DD77HeeE6vHTzaUC+d6HPXMUcrmx8OJPbmxKGySOAtQ=" "webots_ros2_turtlebot";
  webots_ros2_universal_robot = pkg "sha256-IE1qeMLwc46nssLLXbk3L/OHjWesq/vcWg8eEKL1u7g=" "webots_ros2_universal_robot";
}
