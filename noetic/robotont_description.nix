{
  catkin,
  joint_state_publisher,
  robot_state_publisher,
  rviz,
  urdf,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "robotont_description";
  pkgFinal = final.noetic.robotont_description;
  src = srcs.robotont_description.robotont_description;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    joint_state_publisher
    robot_state_publisher
    rviz
    urdf
    xacro
  ];

  colconTestDepends = [
  ];
}
