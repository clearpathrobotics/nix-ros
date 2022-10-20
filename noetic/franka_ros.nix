{
  catkin,
  franka_control,
  franka_description,
  franka_example_controllers,
  franka_gazebo,
  franka_gripper,
  franka_hw,
  franka_msgs,
  franka_visualization,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "franka_ros";
  pkgFinal = final.noetic.franka_ros;
  src = srcs.franka_ros.franka_ros;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    franka_control
    franka_description
    franka_example_controllers
    franka_gazebo
    franka_gripper
    franka_hw
    franka_msgs
    franka_visualization
  ];

  colconTestDepends = [
  ];
}
