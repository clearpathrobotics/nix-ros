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
  name = "warthog_description";
  pkgFinal = final.noetic.warthog_description;
  src = srcs.warthog.warthog_description;

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
