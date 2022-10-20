{
  catkin,
  robot_state_publisher,
  rostest,
  rviz,
  urdf,
  xacro,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "pf_description";
  pkgFinal = final.noetic.pf_description;
  src = srcs.pf_lidar_ros_driver.pf_description;

  colconBuildDepends = [
    catkin
  ];

  colconRunDepends = [
    robot_state_publisher
    rviz
    urdf
    xacro
  ];

  colconTestDepends = [
    rostest
  ];
}
