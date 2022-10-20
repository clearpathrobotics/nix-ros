{
  catkin,
  lms1xx,
  robot_state_publisher,
  roslaunch,
  urdf,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "ridgeback_description";
  pkgFinal = final.noetic.ridgeback_description;
  src = srcs.ridgeback.ridgeback_description;

  colconBuildDepends = [
    catkin
    roslaunch
  ];

  colconRunDepends = [
    lms1xx
    robot_state_publisher
    urdf
    xacro
  ];

  colconTestDepends = [
  ];
}
