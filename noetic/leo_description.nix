{
  catkin,
  robot_state_publisher,
  rostest,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "leo_description";
  pkgFinal = final.noetic.leo_description;
  src = srcs.leo_common.leo_description;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    robot_state_publisher
    xacro
  ];

  colconTestDepends = [
    rostest
  ];
}
