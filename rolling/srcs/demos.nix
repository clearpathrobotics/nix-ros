{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "ros2";
    repo = "demos";
    rev = "25f6176add32c826b05f6b5c808b35d640ff7134";
    hash = "sha256-Qm9KUSr36vZyPD/Zam2yojbYLdmkeIExfWQFcoXz2JU=";
    name = "ros2-demos-25f6176add32c826b05f6b5c808b35d640ff7134";
  });
in
{
  action_tutorials_cpp = pkg "sha256-spi+cWV9cL8LlDZ3WvV3k8a4OHL1a0Nk5sc2phIP0NA=" "action_tutorials/action_tutorials_cpp";
  action_tutorials_interfaces = pkg "sha256-MqzgweGicIM8/75LtwfkGvI8qK90tZ9XxvhAxG/t8Mc=" "action_tutorials/action_tutorials_interfaces";
  action_tutorials_py = pkg "sha256-fl7y4qCKVws5BS/hYRF4YdlvLM8d9x+leGVi431BcRI=" "action_tutorials/action_tutorials_py";
  composition = pkg "sha256-o4e1KgkougnMo6BVthhmopqn1Y9GJ5Uv7nazzrQ8ro8=" "composition";
  demo_nodes_cpp = pkg "sha256-a5Tir7yl9Rd1VsWR8lQ2+i6PreqxC9f360cu2wOSG0I=" "demo_nodes_cpp";
  demo_nodes_cpp_native = pkg "sha256-6o0z9FWeI3SHTnOAb9ISptJq8PE3weEZVRjr2omocFI=" "demo_nodes_cpp_native";
  demo_nodes_py = pkg "sha256-VfWs/ZnWD/ahQ/zA6fk2ou5jgpgCw3qnFBH9dlhYFX4=" "demo_nodes_py";
  dummy_map_server = pkg "sha256-S4UM+Bya8O1bji8c+cR2VImHcrXO0hxqfbCKptNJT28=" "dummy_robot/dummy_map_server";
  dummy_robot_bringup = pkg "sha256-99qylO7HVgnniHj1jkzvbWyu0znibsN2lCNZAmYSvV4=" "dummy_robot/dummy_robot_bringup";
  dummy_sensors = pkg "sha256-InYNhybHiyGgZfT/QQeKT3DqpcfdnHwimr48odgPzmg=" "dummy_robot/dummy_sensors";
  image_tools = pkg "sha256-W5bcQsezAW3O+LnCpjjsggKEjQKLm7ZiOj20sJPZ8ew=" "image_tools";
  intra_process_demo = pkg "sha256-Ng9WTKZqx7nSuzKFX8hSIQzMCvPeffK89Sju+CV8WAE=" "intra_process_demo";
  lifecycle = pkg "sha256-biVni2RLeHYAJW4PzyFghknxDZBZRgd4AZGHTwzk6T0=" "lifecycle";
  lifecycle_py = pkg "sha256-OJ36Dn1bNxWukozeyxFPaL+vRwq2gWJfEtyzobmWWIw=" "lifecycle_py";
  logging_demo = pkg "sha256-TZedWntCnd+S1YyR9P2Q4PYGX3EehWAdNjoKER9+oeE=" "logging_demo";
  pendulum_control = pkg "sha256-acN7g2gGCNmg5knX+EmJjJs4gXXcSDSwdI9DWZ76J0E=" "pendulum_control";
  pendulum_msgs = pkg "sha256-FLR/m7Ba9nSTs1ySDAhrM4ornbL5GVoZ/fyS63bHRzE=" "pendulum_msgs";
  quality_of_service_demo_cpp = pkg "sha256-W723wc46XN4aAXrWPw8qMc40TUdt6c3z2LTkFOZWIKY=" "quality_of_service_demo/rclcpp";
  quality_of_service_demo_py = pkg "sha256-DLQxnD+JPYMSaQHe+TdAJx/02uQNGYvdJK/waCYKsnQ=" "quality_of_service_demo/rclpy";
  topic_monitor = pkg "sha256-PEAbhz5oUjoYS4PikBv8Ynb3Ep2k1xONt738HyrpCuc=" "topic_monitor";
  topic_statistics_demo = pkg "sha256-Zf0cqitwHTw32wyYEQS5CZ9yQvm6f39n98RgEACu45w=" "topic_statistics_demo";
}
