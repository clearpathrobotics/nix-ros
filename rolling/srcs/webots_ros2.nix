{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "cyberbotics";
    repo = "webots_ros2";
    rev = "6ebfccd07b6d24abe5c73622b4ac6fbc6c960c6f";
    hash = "sha256-SHelZxfyIvgijsPMcfulinns/hgJNtAWRaqSw6o22fU=";
    name = "cyberbotics-webots_ros2-6ebfccd07b6d24abe5c73622b4ac6fbc6c960c6f";
  });
in
{
  webots_ros2 = pkg "sha256-bR/bD17LokYjgUsnSj8ndySyGzb+NvSPvOKoaG878DI=" "webots_ros2";
  webots_ros2_control = pkg "sha256-fBQeCvSYTc3ZIFy3pimKJpHQZUCBsgbtbz4au4B2yM4=" "webots_ros2_control";
  webots_ros2_core = pkg "sha256-mOBMU8QH309JbF6l49Kul8uktp8DYQ8GJj4jVhGuP2E=" "webots_ros2_core";
  webots_ros2_driver = pkg "sha256-8TtExDLoDRcCoyjanX3EXmO9yrzQEuhiqfjAfEJFHXE=" "webots_ros2_driver";
  webots_ros2_epuck = pkg "sha256-txe8RaGEPDJvEM7V3XWMwBUDIh0/P0BiOSlXVpOamaU=" "webots_ros2_epuck";
  webots_ros2_importer = pkg "sha256-/eIG81Iplz6mYUx+jjHtHTHa2o4nBgRoWzFe8+wYHwo=" "webots_ros2_importer";
  webots_ros2_mavic = pkg "sha256-yZ9r7Rfgh90EbLUYYxkxVJtnDa00g44rCes5skn5m8Q=" "webots_ros2_mavic";
  webots_ros2_msgs = pkg "sha256-nXxS22vzjsIhTIB0tMsivd3PvGfJK1KOsm83oPgPpSM=" "webots_ros2_msgs";
  webots_ros2_tesla = pkg "sha256-kY1bqi8gfPdnpeR9cn5NjI+br1FQXODouhaeJQeN5TE=" "webots_ros2_tesla";
  webots_ros2_tests = pkg "sha256-jDMpXQaeFZ1/hjMcKgi0sZN+6nJv6VCHeRJIRjSnDgQ=" "webots_ros2_tests";
  webots_ros2_tiago = pkg "sha256-kwtRfI5JsIYdH6C0kTVwHGGWK4Egevl3Kl35rDj7/RU=" "webots_ros2_tiago";
  webots_ros2_turtlebot = pkg "sha256-YBADfPdIfad/34sojpvqCdSZsf7nTQLtmsgfoOVaT3g=" "webots_ros2_turtlebot";
  webots_ros2_universal_robot = pkg "sha256-2Nq4UIE1qIWFZspvnnsbX7pMMOEiE6xJBTFx+AOlaMU=" "webots_ros2_universal_robot";
}
