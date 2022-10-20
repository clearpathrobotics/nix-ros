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
  name = "dbw_fca_description";
  pkgFinal = final.noetic.dbw_fca_description;
  src = srcs.dbw_fca_ros.dbw_fca_description;

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
