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
  name = "dbw_mkz_description";
  pkgFinal = final.noetic.dbw_mkz_description;
  src = srcs.dbw_mkz_ros.dbw_mkz_description;

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
