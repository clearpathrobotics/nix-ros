{ pkgSrc, fetchFromGitHub }:
let
  pkg = pkgSrc (fetchFromGitHub {
    owner = "frankaemika";
    repo = "franka_ros";
    rev = "35e1f654426e04bc9f83b73af4ab68a3fb145c84";
    hash = "sha256-nlvmP/xyNHrItvRRAAB7GA2uqeFnRqQMcbLh1hEtG4g=";
    name = "frankaemika-franka_ros-35e1f654426e04bc9f83b73af4ab68a3fb145c84";
  });
in
{
  franka_control = pkg "sha256-AyswjHrlwGomK37rSJ96UTA+WqlzjA2X52i+/UPSl4A=" "franka_control";
  franka_description = pkg "sha256-p8nbJN7KGlNFLGcvUeZo/ldjsPGAfgOiOEdIQ/qjH64=" "franka_description";
  franka_example_controllers = pkg "sha256-8p7Gw20DddL8YvDbOFecVs3VYEhU+2mALEOjNJY3pdA=" "franka_example_controllers";
  franka_gazebo = pkg "sha256-k+tSmXZZuPT/sdvNLNfR3TPRUgf7LXFvjHsZpz8Ktm4=" "franka_gazebo";
  franka_gripper = pkg "sha256-0+LWjt71ty6lIcgby7jtYDAGWWyxV5w68nV4+9xxaIg=" "franka_gripper";
  franka_hw = pkg "sha256-qON6CwF05nRmOdaG62Spaz/+473wsMyLDhz8SaHDCJs=" "franka_hw";
  franka_msgs = pkg "sha256-rYMpm72ymxQ8x9fJCmMULdHdVB9C1G10ZyqN4C3PAHI=" "franka_msgs";
  franka_ros = pkg "sha256-s0tJdQWTFKOVc0iTFu4iNLBkczyooC+JgTM0YFm8Weo=" "franka_ros";
  franka_visualization = pkg "sha256-sr9NeGx2mzy79LTkzszTHIdYAOPl/9mMKEMAo1laTIM=" "franka_visualization";
}
