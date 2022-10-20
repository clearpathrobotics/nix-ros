{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "uos";
    repo = "rospy_message_converter";
    rev = "29b1c677a72dd66a50d23f75a7170ddab7c67de9";
    hash = "sha256-bdRFFvBcuq4bW3bJbDQTQLEfHgqTkEcdG0lymkxTUOg=";
    name = "uos-rospy_message_converter-29b1c677a72dd66a50d23f75a7170ddab7c67de9";
  });
in
{
  rclpy_message_converter = pkg "sha256-bdvSOR7YA7ZdQJW+lkJ6M1z23A20Xs8mV+SqyTorRYU=" "rclpy_message_converter";
  rclpy_message_converter_msgs = pkg "sha256-k0VJvI7R0uJQ063+UvlDSAgUhmVmygT0Qfi+OiuBUcI=" "rclpy_message_converter_msgs";
}
