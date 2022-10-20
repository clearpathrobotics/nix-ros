{
  catkin,
  robot_state_publisher,
  roslaunch,
  urdf,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "create_description";
  pkgFinal = final.noetic.create_description;
  src = srcs.create_robot.create_description;

  colconBuildDepends = [
    catkin
    roslaunch
  ];

  colconRunDepends = [
    robot_state_publisher
    urdf
    xacro
  ];

  colconTestDepends = [
  ];
}
