{
  catkin,
  cmake_modules,
  dynamic_reconfigure,
  gazebo_dev,
  gazebo_msgs,
  geometry_msgs,
  python,
  roscpp,
  rosgraph_msgs,
  roslib,
  std_msgs,
  std_srvs,
  tf,
  tinyxml,

  buildColconPackage,
  final,
  srcs,
}:

buildColconPackage {
  name = "gazebo_ros";
  pkgFinal = final.noetic.gazebo_ros;
  src = srcs.gazebo_ros_pkgs.gazebo_ros;

  colconBuildDepends = [
    catkin
    cmake_modules
    dynamic_reconfigure
    gazebo_dev
    gazebo_msgs
    geometry_msgs
    roscpp
    rosgraph_msgs
    roslib
    std_msgs
    std_srvs
    tf
    tinyxml
  ];

  colconRunDepends = [
    dynamic_reconfigure
    gazebo_dev
    gazebo_msgs
    geometry_msgs
    python
    roscpp
    rosgraph_msgs
    roslib
    std_msgs
    std_srvs
    tf
    tinyxml
  ];

  colconTestDepends = [
  ];
}
