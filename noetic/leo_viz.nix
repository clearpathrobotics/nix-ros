{
  catkin,
  joint_state_publisher,
  joint_state_publisher_gui,
  leo_description,
  robot_state_publisher,
  rviz,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "leo_viz";
  pkgFinal = final.noetic.leo_viz;
  src = srcs.leo_desktop.leo_viz;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    joint_state_publisher
    joint_state_publisher_gui
    leo_description
    robot_state_publisher
    rviz
    xacro
  ];

  colconTestDepends = [
  ];
}
