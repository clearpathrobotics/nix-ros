{
  catkin,
  robot_state_publisher,
  roslaunch,
  roslib,
  rviz,
  urdf,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "dbw_polaris_description";
  pkgFinal = final.noetic.dbw_polaris_description;
  src = srcs.dbw_polaris_ros.dbw_polaris_description;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    robot_state_publisher
    roslaunch
    urdf
    xacro
  ];

  colconTestDepends = [
    roslaunch
    roslib
    rviz
  ];
}
