{
  catkin,
  joint_state_publisher,
  robot_state_publisher,
  rviz,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "diffbot_description";
  pkgFinal = final.noetic.diffbot_description;
  src = srcs.diffbot.diffbot_description;

  colconBuildDepends = [
    catkin
    joint_state_publisher
    robot_state_publisher
    rviz
  ];

  colconRunDepends = [
    joint_state_publisher
    robot_state_publisher
    rviz
  ];

  colconTestDepends = [
  ];
}
